// Developed by: Aashi Srivastava
// TITLE: OR FROM NAND
// Date: 08.10.23, 10:31 IST

module orfromnand (
    out, in1, in2
);
    input in1, in2;
    output out;
    wire wire1 , wire2;

    nand n1(wire1, in1, in1);
    nand n2(wire2, in2, in2);
    nand n3(out, wire1, wire2);
    
endmodule