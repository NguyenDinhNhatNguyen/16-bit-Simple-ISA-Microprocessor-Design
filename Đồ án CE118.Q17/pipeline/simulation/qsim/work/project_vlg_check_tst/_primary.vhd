library verilog;
use verilog.vl_types.all;
entity project_vlg_check_tst is
    port(
        A_RF            : in     vl_logic_vector(15 downto 0);
        addr            : in     vl_logic_vector(4 downto 0);
        address         : in     vl_logic_vector(7 downto 0);
        B_RF            : in     vl_logic_vector(15 downto 0);
        Data_WB         : in     vl_logic_vector(15 downto 0);
        Doutput         : in     vl_logic_vector(15 downto 0);
        Flush           : in     vl_logic;
        ins             : in     vl_logic_vector(15 downto 0);
        mtr             : in     vl_logic;
        Regwrite_EX     : in     vl_logic;
        Regwrite_MEM    : in     vl_logic;
        regwrite_test   : in     vl_logic;
        result          : in     vl_logic_vector(15 downto 0);
        RI              : in     vl_logic;
        RSA             : in     vl_logic_vector(2 downto 0);
        RSB             : in     vl_logic_vector(2 downto 0);
        Stall           : in     vl_logic;
        WA_WB           : in     vl_logic_vector(2 downto 0);
        Write_address   : in     vl_logic_vector(2 downto 0);
        sampler_rx      : in     vl_logic
    );
end project_vlg_check_tst;
