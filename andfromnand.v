// Developed by: Aashi Srivastava
// TITLE: AND FROM NAND
// Date: 08.10.23, 10:31 IST

module andfromnand (
    out, in1, in2, 
);
    input in1, in2;
    output out;
    wire wire1;

    nand n1(wire1, in1, in2);
    nand n2(out, wire1, wire1);
    
endmodule