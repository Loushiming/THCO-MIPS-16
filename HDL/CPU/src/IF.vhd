----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:23:49 11/12/2016 
-- Design Name: 
-- Module Name:    IF - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.NUMERIC_STD.ALL;
use WORK.util.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity IF is

port(
    rst : in std_logic;
    clk : in std_logic;
    pc : out std_logic_vector(15 downto 0);
    ce : out std_logic);    --指令寄存器使能信号
    
end IF;

architecture Behavioral of IF is
begin

process(clk)
begin

if(clk'event and clk = '1') then
    if(rst == RST_EN) then
        ce <= CHIP_DIS; --rst时禁用指令寄存器
    else
        ce <= CHIP_EN;
    end if;
end if;

end process;


process(clk)
begin

if(clk'event and clk = '1') then
    if(ce == CHIP_DIS) then
        pc <= ZERO_16;
    else 
        pc <= pc + 1;   --按照字寻址
    end if;
end if;

end process;






















end Behavioral;

