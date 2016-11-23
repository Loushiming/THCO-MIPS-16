----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:06:41 11/22/2016 
-- Design Name: 
-- Module Name:    MEM_WB - Behavioral 
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

entity MEN_WB is
    Port(
		MEM_Data_in: in Int16;
		ALU_result_in: in Int16;
		ImNum_in: in Int16;
		Regist_num_in: in Int16;
		WB_reg_addr_in: in Int16;
		PC_in: in Int16;
		
		MEM_Data_out: out Int16;
		ALU_result_out: out Int16;
		ImNum_out: out Int16;
		Regist_num_out: out Int16;
		WB_reg_addr_out: out Int16;
		PC_out: out Int16;
		
		clk: in std_logic;
		rst: in std_logic;
		WriteIn : in  STD_LOGIC
	);
end MEM_WB;

architecture Behavioral of MEM_WB is

begin
	process(rst, clk)
	begin
	if rst = '0' then		
		MEM_Data_out <= Int16_Zero;
		ALU_result_out <= Int16_Zero;
		ImNum_out <= Int16_Zero;
		Regist_num_out <= Int16_Zero;
		WB_reg_addr_out <= Int16_Zero;
		PC_out <= Int16_Zero;
	elsif (clk'event and clk = '1') then
			if (WriteIn = '1') then
				MEM_Data_out <= MEM_Data_in;
				ALU_result_out <= ALU_result_in;
				ImNum_out <= ImNum_in;
				Regist_num_out <= Regist_num_in;
				WB_reg_addr_out <= WB_reg_addr_in;
				PC_out <= PC_in;
			end if
	end if;
	end process;



end Behavioral;
