```vhdl
entity counter is
  Port ( clk : in  STD_LOGIC;
                rst : in  STD_LOGIC;
                count : out  INTEGER range 0 to 7);
end entity;

architecture behavioral of counter is
  signal count_reg : INTEGER range 0 to 7 := 0;
begin
  process (clk, rst)
  begin
    if rst = '1' then
      count_reg <= 0;
    elsif rising_edge(clk) then
      count_reg <= count_reg + 1;
    end if;
  end process;
  count <= count_reg;
end architecture;
```