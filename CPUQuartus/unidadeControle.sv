module unidadeControle(
    input logic clk,

    //fios da instrucao
    input logic [4:0] shamt,
    input logic [5:0] funct,
    input logic [5:0] op,
    

    //sinais dos registradores
    output logic regwrite,
    output logic epcwrite,
    output logic irwrite,

    //sinais memorias
    output logic memwrite,
    output logic memread,
    output logic memtoreg, 

    //sinais pc
    output logic pcwrite,
    output logic pcwritecond,
    
    //sinais pro alu
    output logic aluop,
    output logic aluoutwrite,

    //sinais div e mult
    output logic hiwrite,
    output logic lowrite,
    output logic divby0,

    //sinal troca
    output logic xchgctrl,

    //sinal exception
    output logic expcontrol,

    //sinal shiftreg
    output logic shiftcontrol,

    //lb, lw, lh, sw,sb e sh control
    output logic [1:0] sscontrol,
    output logic [1:0] lscontrol,

    //muxes
    output logic [3:0] iordmux,
    output logic muxhi,
    output logic muxlo,
    output logic [3:0]regdst,
    output logic muxshiftsrca,
    output logic muxshiftsrcb,
    output logic [3:0]muxregdst,
    output logic muxmemtoreg[4:0],
    output logic muxxxchgctrl,
    output logic [1:0]muxalusrca,
    output logic [2:0]muxalusrcb,
    output logic [2:0]muxpcsource
);



endmodule