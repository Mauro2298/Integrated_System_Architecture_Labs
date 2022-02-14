library verilog;
use verilog.vl_types.all;
entity RISCV is
    port(
        RISCV_IN_CLK    : in     vl_logic;
        RISCV_IN_RST    : in     vl_logic;
        RISCV_IN_INST   : in     vl_logic_vector(31 downto 0);
        RISCV_IN_DT     : in     vl_logic_vector(31 downto 0);
        RISCV_OUT_ADD_IM: out    vl_logic_vector(31 downto 0);
        RISCV_OUT_ADD_DM: out    vl_logic_vector(31 downto 0);
        RISCV_OUT_DM_DT : out    vl_logic_vector(31 downto 0);
        RISCV_OUT_DM_RD : out    vl_logic;
        RISCV_OUT_DM_WR : out    vl_logic
    );
end RISCV;
