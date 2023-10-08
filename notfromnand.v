// Developed by: Aashi Srivastava
// TITLE: NOT FROM NAND
// Date: 08.10.23, 10:31 IST

module notfromnand (
    out, in1 
);
    input in1;
    output out;

    nand n1(out, in1, in1);
    
endmodule