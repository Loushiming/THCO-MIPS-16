----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:53:12 11/21/2016 
-- Design Name: 
-- Module Name:    IF_ID - Behavioral 
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
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity IF_ID is
    Port(
		PC_in: in Int16;
		PC_inc_in: in Int16;
		Instruction_in: in Int16;
		
		PC_out: out Int16;
		PC_inc_out: out Int16;
		Instruction_out: out Int16;
		
		clk: in std_logic;
		rst: in std_logic;
		WriteIn : in  STD_LOGIC
	);
end IF_ID;

architecture Behavioral of IF_ID is

begin
	process(rst, clk)
	begin
	if rst = '0' then		
		PC_out <= Int16_Zeros;
		PC_inc_out <= Int16_Zeros;
		Instruction_out <= Int16_Zeros;
	elsif (clk'event and clk = '1') then
			if (WriteIn = '1') then
				PC_out <= PC_in;
				PC_inc_out <= PC_inc_in;
				Instruction_out <= Instruction_in;
			end if
	end if;
	end process;



end Behavioral;

