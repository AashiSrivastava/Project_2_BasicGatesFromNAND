// Developed by: Aashi Srivastava
// TITLE: XNOR FROM NAND
// Date: 08.10.23, 10:31 IST

module xnorfromnand (
    out, in1, in2
);
    input in1, in2;
    output out;
    wire wire1, wire2, wire3, wire4;

    nand n1(wire1, in1, in2);
    nand n2(wire2, wire1, in1);
    nand n3(wire3, wire1, in2);
    nand n4(wire4, wire3, wire2);
    nand n5(out, wire4, wire4);

    
endmodule