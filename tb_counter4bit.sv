`timescale 1ns / 1ps


module counter_4bit_tb;

    logic clk;
    logic reset_n;
    logic load;
    logic [3:0] load_data;
    logic [3:0] count;
    
    
    
    counter_4bit dut(
    
    .clk(clk),
    .reset_n(reset_n),
    .load(load),
    .load_data(load_data),
    .count(count)
    );
    
    
       initial clk = 0;
    always #5 clk = ~clk; 
    
    
        initial begin
        
//        reset_n = 0;
//        load =0;  
//        load_data =4'b0000;
//        #6;
        
        load =0;  
        load_data =4'b0010;
         #6;
        reset_n = 1;
        load =1;  

        #6;
        
        
        

       
        
        end
      
endmodule
