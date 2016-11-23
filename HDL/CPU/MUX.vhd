----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:45:56 11/21/2016 
-- Design Name: 
-- Module Name:    MUX - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
entity Mux is
    Port(
		choice : in  STD_LOGIC_VECTOR (2 downto 0);
		Input1 : in  Int16;
		Input2 : in  Int16;
		Input3 : in  Int16;
		Input4 : in  Int16;
		Input5 : in  Int16;
		Input6 : in  Int16;		
		Input7 : in  Int16;
		Input8 : in  Int16;
		Output : out  Int16
	);
end Mux;

architecture Behavioral of Mux is

begin

with choice select
Output <=
	Input1 when "000",
	Input2 when "001",
	Input3 when "010",
	Input4 when "011",
	Input5 when "100",
	Input6 when "101",
	Input7 when "110",
	input8 when "111",
	Int16_Zero when others;

end Behavioral;

