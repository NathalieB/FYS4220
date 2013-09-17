library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity lab1_g11 is
port
(
	-- Part 1
	LEDR : out std_logic_vector(17 downto 0); -- Red LEDs
	SW   : in std_logic_vector(3 downto 0); -- Switches
	HEX0 : out std_logic_vector(6 downto 0); --  additional output port
	
	-- Part 2
	clk50 		: in std_logic;
	reset_n 		: in std_logic;
	ext_ena_n 	: std_logic
);
	end entity lab1_g11;
	
	architecture top_level of lab1_g11 is
	-- Internal signal declaration
	signal counter : unsigned(3 downto 0) := "0000";
	
	begin
	
	-- lab 1a: Assign all switches to LEDs
	-- LEDR <= SW;
	-- Part 2
----		if not ext_ena_n then
			--counter <= std_logic_vector(unsigned(counter) + 1)  when rising_edge(clk50);
			counter <= unsigned(std_logic_vector(unsigned(counter) +1)) when rising_edge(clk50) and ext_ena_n = '0';
----	end if;
		
	with counter select
		HEX0 <= "1000000" when "0000", -- 0
		"1111001" when "0001", -- 1
		"0100100" when "0010", -- 2
		"0110000" when "0011", -- 3
		"0011001" when "0100", -- 4
		"0010010" when "0101", -- 5
		"0000010" when "0110", -- 6
		"1111000" when "0111", -- 7
		"0000000" when "1000", -- 8
		"0010000" when "1001", -- 9
		"0001000" when "1010", -- a
		"0000011" when "1011", -- b
		"1000110" when "1100", -- c
		"0100001" when "1101", -- d
		"0000110" when "1110", -- e
		"0001110" when "1111", -- f
		"1111111" when others;
	
	
	end architecture top_level;