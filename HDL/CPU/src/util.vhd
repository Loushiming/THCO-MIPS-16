----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:31:17 11/11/2016 
-- Design Name: 
-- Module Name:    util - Behavioral 
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

package util is

----------------------------------------------------------------------------------
-- 全局常量
constant RST_EN : std_logic := '0';
constant RST_DIS : std_logic := '1';

constant WRITE_EN : std_logic := '0';
constant WRITE_DIS : std_logic := '1';

constant READ_EN : std_logic := '0';
constant READ_DIS : std_logic := '1';

constant CHIP_EN : std_logic := '0';
constant CHIP_DIS : std_logic := '1';


constant ZERO_16 : std_logic_vector(15 downto 0) := "0000000000000000";

----------------------------------------------------------------------------------
-- 自定义 type
type InsType is (
    -- 基本指令集
    ins_ADDIU, ins_ADDIU3, ins_ADDSP, ins_ADDU, ins_AND,
    ins_B, ins_BEQZ, ins_BNEZ, ins_BTEQZ, ins_CMP,
    ins_JR, ins_LI, ins_LW, ins_LW_SP, ins_MFIH,
    ins_MFPC, ins_MTIH, ins_MTSP, ins_NOP, ins_OR,
    ins_SLL, ins_SRA, ins_SUBU, ins_SW, ins_SW_SP,
    -- 扩展指令集
    ins_JRRA, ins_JALR, ins_ADDSP3, ins_MOVE, ins_SLT);

end util;

