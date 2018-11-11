----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:42:57 10/28/2018 
-- Design Name: 
-- Module Name:    fulladder - Behavioral 
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

entity fulladder is
port(
	A:in std_logic;
	B:in std_logic;
	C_in:in std_logic;
	C_out:out std_logic;
	S:out std_logic
	);
end fulladder;

architecture Behavioral of fulladder is


component halfadder
port(
a : in std_logic;
b : in std_logic;
s : out std_logic;
c : out std_logic
);
end component;

signal c_mid:std_logic;
signal t_mid:std_logic;
signal s_mid:std_logic;

begin
arian: halfadder port map(a=>A,b=>B,s=>s_mid,c=>c_mid);
nariman: halfadder port map(a=>C_in,b=>s_mid,s=>S,c=>t_mid);
C_out <= t_mid OR c_mid;

end Behavioral;

