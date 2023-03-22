
module fulladder(
  input  logic a,b,cin,
  output logic result,cout
);
  
  wire wire_1, wire_2;
  assign wire_1 = a ^ b;
  assign wire_2 = wire_1 & cin;
  
  wire wire_3 = a & b;
  
  always_comb begin
    result = wire_1 ^ cin;
    cout = wire_2 | wire_3;
  end
  
  
endmodule
  
