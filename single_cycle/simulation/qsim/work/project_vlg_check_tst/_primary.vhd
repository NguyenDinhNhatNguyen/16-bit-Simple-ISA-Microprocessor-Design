library verilog;
use verilog.vl_types.all;
entity project_vlg_check_tst is
    port(
        A_RF            : in     vl_logic_vector(15 downto 0);
        address         : in     vl_logic_vector(7 downto 0);
        B_RF            : in     vl_logic_vector(15 downto 0);
        DAddress        : in     vl_logic_vector(4 downto 0);
        Doutput         : in     vl_logic_vector(15 downto 0);
        imm             : in     vl_logic_vector(6 downto 0);
        INSTRUCTION     : in     vl_logic_vector(15 downto 0);
        result          : in     vl_logic_vector(15 downto 0);
        wa              : in     vl_logic_vector(2 downto 0);
        sampler_rx      : in     vl_logic
    );
end project_vlg_check_tst;
