// Developed by Aashi Srivastava
//TITLE: TEST BENCH FOR NOT GATE
// Date: 06.10.23, 11:21 IST
module notGate_tb (
    
);
    reg in; //input is declared as reg type
    wire out; //output is declared as net type

    notfromnand N(out,in); // notgate module instantiation

    initial begin
        in=0;
    end

    initial begin //input signal generation
    repeat(20)
     #5 in=~in;
        
    end

    initial begin
        $dumpfile("notfromnand.vcd"); //for gtkwave opening 
        $dumpvars(0,notGate_tb); // specifiies to dump all the variables
        $monitor($time,"out=%b in=%b", out, in); //to monitor real-time change in variables
        #30 $finish;
    end

endmodule