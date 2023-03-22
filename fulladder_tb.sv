module fulladder_tb;
  timeunit 10ns; timeprecision 1ns;
  logic a=0, ci=0, b, sum, co;
  fulladder dut (.*);
  
  initial begin
    $dumpfile("dump.vcd"); $dumpvars(0, dut);
    
    #30 a <= 0; b <= 0; cin <= 0;
    #10 a <= 0; b <= 0; cin <= 1;
    #20 a <= 1; b <= 1; cin <= 0;
    
    #1 assert ({cout,result} == a+b+ci)
    Concat $display ("Okay");
    	else $error ("Not okay");
  end
endmodule
