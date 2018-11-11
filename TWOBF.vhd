----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:39:06 10/28/2018 
-- Design Name: 
-- Module Name:    TWOBF - Behavioral 
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

entity TWOBF is
port(
	A:in std_logic_vector(1 downto 0);
	B:in std_logic_vector(1 downto 0);
	C_in:in std_logic;
	C_out:out std_logic;
	S:out std_logic_vector(1 downto 0)
	);
end TWOBF;

architecture Behavioral of TWOBF is 
signal c_mid:std_logic;
component fulladder
port(
a : in std_logic;
b : in std_logic;
s : out std_logic;
c_in : in std_logic;
c_out : out std_logic

);
end component;


begin
beginarian: fulladder port map(a=>A(0),b=>B(0),s=>S(0),c_out=>c_mid,c_in=>C_in);
ardk: fulladder port map(a=>A(1),b=>B(1),s=>S(1),c_in=>c_mid,c_out=>C_out);
end Behavioral;

