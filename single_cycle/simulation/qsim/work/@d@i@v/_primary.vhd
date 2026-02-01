library verilog;
use verilog.vl_types.all;
entity DIV is
    port(
        Quotient        : out    vl_logic_vector(15 downto 0);
        A               : in     vl_logic_vector(15 downto 0);
        B               : in     vl_logic_vector(15 downto 0)
    );
end DIV;
