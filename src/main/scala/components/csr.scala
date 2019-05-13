/* Describes register file that maintains machine state */

package dinocpu

import chisel3._
import collection.mutable.LinkedHashMap
import chisel3.util._
import Util._

import scala.math._

object MCauses {
  //with interrupt
  val machine_soft_int = 0x80000003
  val machine_timer_int = 0x80000007
  val machine_ext_int = 0x8000000b

  //non interrupt
  val misaligned_fetch = 0x0
  val fetch_access = 0x1
  val illegal_instruction = 0x2
  val breakpoint = 0x3
  val misaligned_load = 0x4
  val load_access = 0x5
  val misaligned_store = 0x6
  val store_access = 0x7
  val machine_ecall = 0xb
  val all = {
    val res = collection.mutable.ArrayBuffer[Int]()
    res += machine_soft_int
    res += machine_timer_int
    res += machine_ext_int

    res += misaligned_fetch
    res += fetch_access
    res += illegal_instruction
    res += breakpoint
    res += misaligned_load
    res += load_access
    res += misaligned_store
    res += store_access
    res += machine_ecall
    res.toArray
  }
}

object MCSRs {
  //machine information registers
  val mvendorid = 0xf11 //vendor id
  val marchid = 0xf12 //architecture id
  val mimpid = 0xf13 //implementation id
  val mhartid = 0xf14 //hardware thread id
  //machine trap setup
  val mstatus = 0x300 //machine status reg
  val misa = 0x301 //isa and extensions
  val medeleg = 0x302 //machine exception delegation reg
  val mideleg = 0x303 //machine interrupt delegation reg
  val mie = 0x304 //machine iterrupt-enable reg
  val mtvec = 0x305 //machine trap handler base address
  val mcounteren = 0x306 //machine counter enable

  //machine trap handling
  val mscratch = 0x340 //scratch reg for machine trap handlers
  val mepc = 0x341 //machine exception program counter
  val mcause = 0x342 //machine trap cause
  val mtval = 0x343 //machine bad address or instruction
  val mip = 0x344 //machine interrupt pending

  //machine memory protection
  //DONT NEED
  
  //machine counter/timers
  val mcycle = 0xb00 //machine cycle counter
  val minstret = 0xb02 //machine instructions retured counter
  val mcycleh = 0xb80
  val minstreth = 0xb82
  //performance counter setup
  val mcounterinhibit = 0x320
  val all = {
    val res = collection.mutable.ArrayBuffer[Int]()
    res += mstatus
    res += misa
    res += medeleg
    res += mideleg
    res += mie
    res += mtvec
    res += mscratch
    res += mepc
    res += mcause
    res += mtval
    res += mip
    res += mcycle
    res += minstret
    res += mcycleh
    res += minstreth
    res += mvendorid
    res += marchid
    res += mhartid
    res += mimpid
    res += mcounterinhibit
    res.toArray
  }
}

class MStatus extends Bundle{
  val sd = Bool() //dirty fs or xs
  val wpri1 = UInt(8.W) //reserved, zero
  val tsr = Bool() //trap on sret
  val tw = Bool() //timeout for supervisor wait for interrupt
  val tvm = Bool() //trap virtual memory
  val mxr = Bool() //make executable readable
  val sum = Bool() //supervisor user mem access
  val mprv = Bool() //modify priv, access memorr as mpp
  val xs = UInt(2.W) //user extension state
  val fs = UInt(2.W) //float state
  //previous privilege
  val mpp = UInt(2.W)
  val wpri2 = UInt(2.W)
  val spp = UInt(1.W)
  //previous interrupt enable
  val mpie = Bool()
  val wpri3 = Bool() //reserved, zero
  val spie = Bool()
  val upie = Bool() 
  //interrupt enable
  val mie = Bool() //machine interrupt enable
  val wpri4 = Bool() //reserved, zero
  val sie = Bool() //supervisor interrupt enable
  val uie = Bool() //user interrupt enable
}

class MISA extends Bundle{
  val mxl = UInt(2.W) //rv32, 64 , 128
  val wlrl = UInt(4.W) //reserved
  val extensions = UInt(26.W) //isa extensions
}

class MVendorID extends Bundle{
  val bank = UInt(25.W)
  val offset = UInt(7.W)
}

class MTVec extends Bundle{
  val base = UInt(30.W)
  val mode = UInt(2.W)
}

class MIx extends Bundle{
 val wpri1 = UInt(20.W)
 val meix = Bool()
 val wpri2 = UInt(1.W)
 val seix = Bool()
 val ueix = Bool()
 val mtix = Bool()
 val wpri3 = UInt(1.W)
 val stix = Bool()
 val utix = Bool()
 val msix = Bool()
 val wpri4 = UInt(1.W)
 val ssix = Bool()
 val usix = Bool()
}

class XCounterEnInhibit extends Bundle{
  val hpm31 = Bool()
  val hpm30 = Bool()
  val hpm29 = Bool()
  val hpm28 = Bool()
  val hpm27 = Bool()
  val hpm26 = Bool()
  val hpm25 = Bool()
  val hpm24 = Bool()
  val hpm23 = Bool()
  val hpm22 = Bool()
  val hpm21 = Bool()
  val hpm20 = Bool()
  val hpm19 = Bool()
  val hpm18 = Bool()
  val hpm17 = Bool()
  val hpm16 = Bool()
  val hpm15 = Bool()
  val hpm14 = Bool()
  val hpm13 = Bool()
  val hpm12 = Bool()
  val hpm11 = Bool()
  val hpm10 = Bool()
  val hpm9 = Bool()
  val hpm8 = Bool()
  val hpm7 = Bool()
  val hpm6 = Bool()
  val hpm5 = Bool()
  val hpm4 = Bool()
  val hpm3 = Bool()
  val ir = Bool()
  val tmzero = Bool()
  val cy = Bool()
}

class MCause extends Bundle{
  val interrupt = Bool()
  val exceptioncode = UInt(31.W)
}

object MCSRCmd{
  // commands
  val size = 3.W
  val execute = 0.asUInt(size)
  val nop = 0.asUInt(size)
  val write = 1.asUInt(size)
  val set = 2.asUInt(size)
  val clear = 3.asUInt(size)
  val interrupt = 4.asUInt(size)
  val read = 5.asUInt(size)
  
  val SIZE = 3.W
  val MSB = 31
  val LSB = 20
  val TRAPADDR = "h80000000".U
  val MPRV = 3
}
 

//reorder bundles
class CSRRegFileIO extends Bundle{
  //val hartid = Input(UInt(32.W))
  val rw = new Bundle {
    val rdata = Output(UInt(32.W)) //
    val wdata = Input(UInt(32.W)) //
  }

  val csr_stall = Output(Bool())//not needed in single cycle
  val eret = Output(Bool())// change ret names

  val decode = new Bundle {
    val inst = Input(UInt(32.W)) //
    val immid = Input(UInt(32.W)) //
    val read_illegal = Output(Bool())
    val write_illegal = Output(Bool())
    val system_illegal = Output(Bool())
  }
  
  val regwrite = Output(Bool())
  val status = Output(new MStatus())//not needed in this design but useful if more ISA extensions
  val evec = Output(UInt(32.W)) //
  val exception = Input(Bool())  // rename to illgl inst
  val retire = Input(Bool()) // rename to retire inst
  val pc = Input(UInt(32.W)) //
  val time = Output(UInt(32.W))//
}

class CSRRegFile extends Module{
  //INIT CSR
  val io = IO(new CSRRegFileIO)
  io := DontCare

  val reset_mstatus = WireInit(0.U.asTypeOf(new MStatus()))
  reset_mstatus.mpp := MCSRCmd.MPRV//machine mode
  reset_mstatus.mie := true.B//machine mode
  reset_mstatus.mie := true.B//machine mode

  val reg_mstatus = RegInit(reset_mstatus)
  val reg_mepc = Reg(UInt(32.W))
  val reg_mcause = RegInit(0.U.asTypeOf(new MCause()))
  val reg_mtval = Reg(UInt(32.W))
  val reg_mscratch = Reg(UInt(32.W))
  val reg_mtimecmp = Reg(UInt(64.W))
  val reg_medeleg = Reg(UInt(32.W))

  val reg_mip = RegInit(0.U.asTypeOf(new MIx()))
  val reg_mie = RegInit(0.U.asTypeOf(new MIx()))
  val reg_wfi = RegInit(false.B)
  val reg_mtvec = RegInit(0.U.asTypeOf(new MTVec()))

  val reg_time = WideCounter(64)
  val reg_instret = WideCounter(64, io.retire)

  val reg_mcounterinhibit = RegInit(0.U.asTypeOf(new XCounterEnInhibit()))
  val reg_mcounteren = RegInit(0.U.asTypeOf(new XCounterEnInhibit()))

  val read_mstatus = io.status.asUInt()
  val isa_string = "I"
  val reg_misa = RegInit((BigInt(0) | isa_string.map(x => 1 << (x - 'A')).reduce(_|_)).U.asTypeOf(new MISA()))
  val reg_mvendorid = RegInit(0.U.asTypeOf(new MVendorID()))


  val read_mapping = collection.mutable.LinkedHashMap[Int,Bits](
    MCSRs.mcounterinhibit -> reg_mcounterinhibit.asUInt, 
    MCSRs.mcycle -> reg_time,
    MCSRs.minstret -> reg_instret,
    MCSRs.mimpid -> 0.U,
    MCSRs.marchid -> 0.U,
    MCSRs.mvendorid -> 0.U,
    MCSRs.misa -> reg_misa.asUInt,
    MCSRs.mstatus -> read_mstatus,
    MCSRs.mtvec -> MCSRCmd.TRAPADDR,
    MCSRs.mip -> reg_mip.asUInt(),
    MCSRs.mie -> reg_mie.asUInt(),
    MCSRs.mscratch -> reg_mscratch,
    MCSRs.mepc -> reg_mepc,
    MCSRs.mtval -> reg_mtval,
    MCSRs.mcause -> reg_mcause.asUInt(),
    MCSRs.mhartid -> 0.U,
    MCSRs.medeleg -> reg_medeleg)
    
  read_mapping += MCSRs.mcycleh -> 0.U 
  read_mapping += MCSRs.minstreth -> 0.U
  
  //CSR DECODE
  val cmd = WireInit(3.U(3.W))
  
  when( io.decode.inst(6, 0) === ("b1110011".U)){
    switch(io.decode.inst(14, 12)){
      is("b011".U){
        cmd := MCSRCmd.clear
        io.regwrite := true.B
      }
      is("b111".U){
        cmd := MCSRCmd.clear
        io.regwrite := true.B
      } 
      is("b010".U){
        cmd := MCSRCmd.set
        io.regwrite := true.B
      }
      is("b110".U){
        cmd := MCSRCmd.set
        io.regwrite := true.B
      }
      is("b001".U){
        cmd := MCSRCmd.write
        io.regwrite := true.B
      }
      is("b101".U){
        cmd := MCSRCmd.write
        io.regwrite := true.B
      }
      is("b000".U){
        cmd := MCSRCmd.interrupt
        io.regwrite := false.B
      }
    }
  }.otherwise{
    cmd := MCSRCmd.nop
    io.regwrite := false.B
  }
  
  val csr = io.decode.inst(MCSRCmd.MSB, MCSRCmd.LSB)
  val system_insn = cmd === MCSRCmd.interrupt
  val cpu_ren = cmd =/= MCSRCmd.nop && !system_insn


  val decoded_addr = read_mapping map { case (k, v) => k -> (csr === k) }
  val priv_sufficient = MCSRCmd.MPRV >= csr(9,8)
  val read_only = csr(11,10).andR
  val cpu_wen = cpu_ren && cmd =/= MCSRCmd.read && priv_sufficient
  val wen = cpu_wen && !read_only
  val wdata = readModifyWriteCSR(cmd.asInstanceOf[UInt], io.rw.rdata, io.rw.wdata)

  val opcode = 1.U << csr(2,0)
  val insn_call = system_insn && opcode(0)
  val insn_break = system_insn && opcode(1)
  val insn_ret = system_insn && opcode(2) && priv_sufficient
  val insn_wfi = system_insn && opcode(5) && priv_sufficient

  private def decodeAny(m: LinkedHashMap[Int,Bits]): Bool = m.map( { case(k: Int, _: Bits) => csr === k }).reduce(_ || _)
  io.decode.read_illegal := 3 < csr(9,8) || !decodeAny(read_mapping) 
  io.decode.write_illegal := csr(11,10).andR
  io.decode.system_illegal := 3 < csr(9,8)

  io.status := reg_mstatus

  io.eret := insn_call || insn_break || insn_ret

  // ILLEGAL INSTR
  when (io.exception) {
    reg_mcause.interrupt := MCauses.illegal_instruction & "h80000000".U
    reg_mcause.exceptioncode := MCauses.illegal_instruction & "h7fffffff".U
    io.evec := "h80000004".U
    reg_mepc := io.pc // misaligned memory exceptions not supported...
  }
 
  //MISALIGNED MEM ACCESS
  /*
  when (io.???) { //fetchexcept?
    reg_mcause.interrupt := MCauses.misaligned_fetch & "h80000000".U
    reg_mcause.exceptioncode := MCauses.misaligned_fetch & "h7fffffff".U
    io.evec := "h80000004".U
    reg_mepc := ??? 
  }.elsewhen (io.???){ ///loadexception?
    reg_mcause.interrupt := MCauses.misaligned_load & "h80000000".U
    reg_mcause.exceptioncode := MCauses.misaligned_load & "h7fffffff".U
    io.evec := "h80000004".U
    reg_mepc := ??? 
  }.elsewhen(io.???){ //storeexception?
    reg_mcause.interrupt := MCauses.misaligned_store & "h80000000".U
    reg_mcause.exceptioncode := MCauses.misaligned_store & "h7fffffff".U
    io.evec := "h80000004".U
    reg_mepc := ??? 
  }*/

  //assert(PopCount(insn_ret :: io.exception :: Nil) <= 1, "these conditions must be mutually exclusive")

   when (reg_time >= reg_mtimecmp) {
      reg_mip.mtix := true
   }

  //MRET
  when (insn_ret && !csr(10)) {
    reg_mstatus.mie := reg_mstatus.mpie
    reg_mstatus.mpie := true
    io.evec := reg_mepc
  }

  //ECALL
  when(insn_call){
    io.evec := "h80000004".U
    reg_mcause.interrupt := MCauses.machine_ecall & "h80000000".U
    reg_mcause.exceptioncode := MCauses.machine_ecall & "h7fffffff".U
  }

  //EBREAK
  when(insn_break){
    io.evec := "h80000004".U
    reg_mcause.interrupt := MCauses.breakpoint & "h80000000".U
    reg_mcause.exceptioncode := MCauses.breakpoint & "h7fffffff".U
  }

  io.time := reg_time
  io.csr_stall := reg_wfi


  io.rw.rdata := Mux1H(for ((k, v) <- read_mapping) yield decoded_addr(k) -> v)

  when (wen) {
    //MISA IS FIXED IN THIS IMPLEMENATION
    
    //MVENDORID IS FIXED IN THIS IMPLEMENTATION

    //MARCHID IS FIXED IN THIS IMPLEMENTATION

    //MIMPID IS FIXED IN THIS IMPLEMENTATION
    
    //MHARTID IS FIXED IN THIS IMPLEMENTATION
    
    //MSTATUS
    /* Only need to worry about m mode interrupts so no need to worry about setting
     * mpie, mpp, and mie correctly with respect to other modes.
     * non implemented modes wired to 0
     */
    when (decoded_addr(MCSRs.mstatus)) {
      val new_mstatus = wdata.asTypeOf(new MStatus())
      reg_mstatus.mie := new_mstatus.mie
      reg_mstatus.mpie := new_mstatus.mpie
      //unused bits in mstatus m-mode only specified by spec
      reg_mstatus.spp := 0
      reg_mstatus.uie := 0
      reg_mstatus.upie := 0
      reg_mstatus.mprv := 0
      reg_mstatus.mxr := 0
      reg_mstatus.sum := 0
      reg_mstatus.tvm := 0
      reg_mstatus.tw := 0
      reg_mstatus.tsr := 0
      reg_mstatus.fs := 0
      reg_mstatus.xs := 0
      reg_mstatus.sd := 0
    }
    
    //MTVEC IS FIXED IN THIS IMPLEMENTATION

    //MDELEG DOES NOT EXIST IN M-MODE IMPLEMENTATION
    
    //MIDELEG DOES NOT EXIST IN M-MODE IMPLEMENTATION

    
    //MIP
    /* mtip read only, cleared on timercmp write
     * meip read only, set by external interrupt controller
     */
    when (decoded_addr(MCSRs.mip)) {
      val new_mip = wdata.asTypeOf(new MIx())
      reg_mip.msix := new_mip.msix
      reg_mip.seix := 0
      reg_mip.ueix := 0
      reg_mip.stix := 0
      reg_mip.utix := 0
      reg_mip.ssix := 0
      reg_mip.usix := 0

    }
    //MIE
    /* deals with external interrupts similar to  mip but
     * m mode bits are r and w
     */
    when (decoded_addr(MCSRs.mie)) {
      val new_mie = wdata.asTypeOf(new MIx())
      reg_mie.meix := new_mie.meix
      reg_mie.msix := new_mie.msix
      reg_mie.mtix := new_mie.mtix
      reg_mip.seix := 0
      reg_mip.ueix := 0
      reg_mip.stix := 0
      reg_mip.utix := 0
      reg_mip.ssix := 0
      reg_mip.usix := 0

    }
    //MCOUNTEREB IS FIXED IN THIS IMPLEMENTATION BECAUSE NO S | U MODE
    
    //MCOUNTINHIBIT
    /* stops counting cycles and retired instructions if need be
     *
     */
    when (decoded_addr(MCSRs.mcounterinhibit)) {
      val new_mcounterinhibit = wdata.asTypeOf(new XCounterEnInhibit())
      reg_mcounterinhibit := new_mcounterinhibit
      if( reg_mcounterinhibit.cy == false.B) {
        writeCounter(MCSRs.mcycle, reg_time, wdata)
      }
      if( reg_mcounterinhibit.ir == false.B){
        writeCounter(MCSRs.minstret, reg_instret, wdata)
      }
    }
    
    //MSCRATCH
    when (decoded_addr(MCSRs.mscratch)) { reg_mscratch := wdata }
    
    //MEPC
    /* hardcoded to be 32 bit aligned because no compressed isa last 2 bits 0
     */
    when (decoded_addr(MCSRs.mepc))     { reg_mepc := (wdata(32-1,0) >> 2.U) << 2.U }
    //MCAUSE
    /* Only write to on interrupt for hardware. software can write whenever
     * masks msb and 5 lsb from wdata
     */
    when (decoded_addr(MCSRs.mcause))   { 
      reg_mcause.interrupt := (wdata & ((BigInt(1) << (32-1)) + 31).U) & "h80000000".U /* only implement 5 LSBs and MSB */
      reg_mcause.exceptioncode := (wdata & ((BigInt(1) << (32-1)) + 31).U) & "h7fffffff".U /* only implement 5 LSBs and MSB */

    }

    when (decoded_addr(MCSRs.mtval))    { reg_mtval := wdata(32-1,0) }
    when (decoded_addr(MCSRs.medeleg))    { reg_medeleg := wdata(32-1,0) }
  }
  def writeCounter(lo: Int, ctr: WideCounter, wdata: UInt) = {
    val hi = lo + MCSRs.mcycleh - MCSRs.mcycle
    when (decoded_addr(hi)) { ctr := Cat(wdata(ctr.getWidth-33, 0), ctr(31, 0)) }
    when (decoded_addr(lo)) { ctr := Cat(ctr(ctr.getWidth-1, 32), wdata) }
  }
  def readModifyWriteCSR(cmd: UInt, rdata: UInt, wdata: UInt) =
(Mux(cmd.isOneOf(MCSRCmd.set, MCSRCmd.clear), rdata, 0.U) | wdata) & ~Mux(cmd === MCSRCmd.clear, wdata, 0.U)
}