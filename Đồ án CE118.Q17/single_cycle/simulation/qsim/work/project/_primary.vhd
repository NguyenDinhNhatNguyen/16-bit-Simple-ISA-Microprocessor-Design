library verilog;
use verilog.vl_types.all;
entity project is
    port(
        A_RF            : out    vl_logic_vector(15 downto 0);
        INSTRUCTION     : out    vl_logic_vector(15 downto 0);
        clk             : in     vl_logic;
        address         : out    vl_logic_vector(7 downto 0);
        B_RF            : out    vl_logic_vector(15 downto 0);
        DAddress        : out    vl_logic_vector(4 downto 0);
        Doutput         : out    vl_logic_vector(15 downto 0);
        imm             : out    vl_logic_vector(6 downto 0);
        result          : out    vl_logic_vector(15 downto 0);
        wa              : out    vl_logic_vector(2 downto 0)
    );
end project;
