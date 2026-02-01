library verilog;
use verilog.vl_types.all;
entity project is
    port(
        RI              : out    vl_logic;
        Regwrite_MEM    : out    vl_logic;
        Stall           : out    vl_logic;
        Regwrite_EX     : out    vl_logic;
        Flush           : out    vl_logic;
        clk             : in     vl_logic;
        WA_WB           : out    vl_logic_vector(2 downto 0);
        mtr             : out    vl_logic;
        regwrite_test   : out    vl_logic;
        A_RF            : out    vl_logic_vector(15 downto 0);
        addr            : out    vl_logic_vector(4 downto 0);
        address         : out    vl_logic_vector(7 downto 0);
        B_RF            : out    vl_logic_vector(15 downto 0);
        Data_WB         : out    vl_logic_vector(15 downto 0);
        Doutput         : out    vl_logic_vector(15 downto 0);
        ins             : out    vl_logic_vector(15 downto 0);
        result          : out    vl_logic_vector(15 downto 0);
        RSA             : out    vl_logic_vector(2 downto 0);
        RSB             : out    vl_logic_vector(2 downto 0);
        Write_address   : out    vl_logic_vector(2 downto 0)
    );
end project;
