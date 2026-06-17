module testbench;

reg a, b;

wire and_gate;
wire or_gate;
wire not_gate;
wire nand_gate;
wire nor_gate;
wire xor_gate;

logic_gates uut(
    .a(a),
    .b(b),
    .and_gate(and_gate),
    .or_gate(or_gate),
    .not_gate(not_gate),
    .nand_gate(nand_gate),
    .nor_gate(nor_gate),
    .xor_gate(xor_gate)
);

initial begin

$dumpfile("dump.vcd");
$dumpvars(0,testbench);

$monitor("a=%b b=%b AND=%b OR=%b NOT=%b NAND=%b NOR=%b XOR=%b",
a,b,and_gate,or_gate,not_gate,nand_gate,nor_gate,xor_gate);

a=0; b=0;
#10;

a=0; b=1;
#10;

a=1; b=0;
#10;

a=1; b=1;
#10;

end

endmodule