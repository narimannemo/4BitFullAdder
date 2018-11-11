----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:00:06 10/28/2018 
-- Design Name: 
-- Module Name:    FOURBF - Behavioral 
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

entity FOURBF is
port(
	A:in std_logic_vector(3 downto 0);
	B:in std_logic_vector(3 downto 0);
	C_in:in std_logic;
	C_out:out std_logic;
	S:out std_logic_vector(3 downto 0)
	);
end FOURBF;

architecture Behavioral of FOURBF is
signal c_mid:std_logic;

component TWOBF
port(
a : in std_logic_vector(1 downto 0);
b : in std_logic_vector(1 downto 0);
s : out std_logic_vector(1 downto 0);
c_in : in std_logic;
c_out : out std_logic

);
end component;
begin
beginarian4: TWOBF port map(a=>A(1 downto 0),b=>B(1 downto 0),s=>s(1 downto 0),c_out=>c_mid,c_in=>C_in);
beginarian5: TWOBF port map(a=>A(3 downto 2),b=>B(3 downto 2),s=>S(3 downto 2),c_in=>c_mid,c_out=>C_out);
end Behavioral;

