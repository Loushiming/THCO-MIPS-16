----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:24:14 11/12/2016 
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

port(
    rst : in std_logic;
    clk : in std_logic;
    IF_pc : in std_logic_vector(15 downto 0); --取值阶段取得的指令对应的地址
    IF_ins : in std_logic_vector(15 downto 0);  --取值阶段取得的指令
    ID_pc : out std_logic_vector(15 downto 0);    --译码阶段的指令对应的地址
    ID_ins : out std_logic_vector(15 downto 0));

end IF_ID;

architecture Behavioral of IF_ID is

begin

process(clk)
begin

if(clk'event and clk = '1') then
    if(rst == RST_EN) then
        ID_pc <= ZERO_16;
        ID_ins <= ZERO_16;
    else                            --其余时刻向下传递取指阶段的值
        ID_pc <= IF_pc;
        ID_ins <= IF_ins;
    end if;
end if;

end process;


end Behavioral;

