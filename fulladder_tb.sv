// Code your testbench here
// or browse Examples
module fulladder_tb;
  timeunit 10ns; timeprecision 1ns;
  logic a=0, cin=0, b, result, cout;
  fulladder dut (.*);
  
  initial begin
    $dumpfile("dump.vcd"); $dumpvars(0, dut);
    
    #30 a <= 0; b <= 0; cin <= 0;
    #10 a <= 0; b <= 0; cin <= 1;
    #20 a <= 1; b <= 1; cin <= 0;
    
    #1  assert ({cout,result} == a+b+cin)
    Concat $display ("Okay");
    	else $error ("Not okay");
    
    
    #10 a <= 1; b <= 1; cin <= 1;
    
    #1 assert (dut.wire_1 == 0)
      else $error("False. Wire_1 = %d", dut.wire_1);
    
    $finish();
    
  end
endmodule
