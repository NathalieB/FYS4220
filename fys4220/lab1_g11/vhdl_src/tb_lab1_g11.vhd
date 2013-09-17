library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_lab1_g11 is
end;

architecture testbench of tb_lab1_g11 is
	-- Part 1
	signal LEDR 		: std_logic_vector(17 downto 0);
	signal SW   		: std_logic_vector(3 downto 0);
	signal HEX0 		: std_logic_vector(6 downto 0);
	-- Part 2
	signal clk50 		: std_logic;
	signal reset_n		: std_logic;
	signal ext_ena_n	: std_logic;
	signal clk_ena		: boolean;
	constant clk_period : time := 20 ns; -- 50 MHz
    
    component lab1_g11 is
		port ( 
			 -- Part 1
			LEDR 		 : out std_logic_vector(17 downto 0);
			SW      	 : in std_logic_vector(3 downto 0);
			HEX0 		 : out std_logic_vector(6 downto 0);
			-- Part 2
			clk50 	 : in std_logic;
			reset_n 	 : in std_logic;
			ext_ena_n : in std_logic);
    end component lab1_g11;

begin

   UUT : lab1_g11
	port map(
		-- Part 1	
      LEDR => LEDR,
      SW   => SW,
      HEX0 => HEX0,
		-- Part 2
		clk50 		=> clk50,
		reset_n 		=> reset_n,
		ext_ena_n 	=> ext_ena_n
	);
	
	-- Part 2
	-- Create a 50 MHz clock
	clk50 <= not clk50 after clk_period/2 when clk_ena else '0';

  stimuli_process : process 
  begin

	-- Part 2
	-- Set default values
	clk_ena <= false;
	reset_n <= '1';
	ext_ena_n <= '1';
	SW <= (others => '0');
	
	-- Enable clk and wait for 3 clock periods
	clk_ena <= true;
	wait for 3*clk_period;
	-- Assert reset_n for 3 clock periods
	reset_n <= '0';
	wait for 3*clk_period;
	-- De-assert reset_n and wait for 3 clock periods
	reset_n <= '1';
	wait for 3*clk_period;
	-- Enable counter and wait for 20 clock periods
	ext_ena_n <= '0';
	wait for 20*clk_period;
	-- Assert reset_n for 3 clock periods
	reset_n <= '0';
	wait for 3*clk_period;
	-- De-assert reset_n and wait for 3 clock periods
	reset_n <= '1';
	wait for 10*clk_period;
	-- Disable the clock
	clk_ena <= false;
	-- End of the simulation
	wait;
  
  
-- Part 1 

--set'1' as the default values for input SW
--SW(3 downto 0) <= (others => '0');
--wait for 20 ns;
--Run through all combinations of input values 
--for SW(3 downto 0) and validate the expected value 
--of HEX0. Change value every 5ns.
--SW(3 downto 0) <= X"0";
--wait for 5 ns;
--SW(3 downto 0) <= X"1";
--wait for 5 ns;
--SW(3 downto 0) <= X"2";
--wait for 5 ns;
--SW(3 downto 0) <= X"3";
--wait for 5 ns;
--SW(3 downto 0) <= X"4";
--wait for 5 ns;
--SW(3 downto 0) <= X"5";
--wait for 5 ns;
--SW(3 downto 0) <= X"6";
--wait for 5 ns;
--SW(3 downto 0) <= X"7";
--wait for 5 ns;
--SW(3 downto 0) <= X"8";
--wait for 5 ns;
--SW(3 downto 0) <= X"9";
--wait for 5 ns;
--SW(3 downto 0) <= X"A";
--wait for 5 ns;
--SW(3 downto 0) <= X"B";
--wait for 5 ns;
--SW(3 downto 0) <= X"C";
--wait for 5 ns;
--SW(3 downto 0) <= X"D";
--wait for 5 ns;
--SW(3 downto 0) <= X"E";
--wait for 5 ns;
--SW(3 downto 0) <= X"F";
--wait;
end process stimuli_process;
end architecture testbench;

