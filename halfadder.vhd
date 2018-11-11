----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:12:52 10/21/2018 
-- Design Name: 
-- Module Name:    halfadder - Behavioral 
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


entity halfadder is
port(
A : in std_logic;
B : in std_logic;
S : out std_logic;
C : out std_logic
);
--A : in std_logic_vector(1 downto 0);
--B : in std_logic_vector(1 downto 0);
--S : out std_logic_vector(1 downto 0);
--C : out std_logic
--);
end halfadder;

architecture Behavioral of halfadder is 

begin
S<= A XOR B;
C<= (not A) AND B;

--------------------------
--S(0)<= A(0) XOR B(0);
--S(1)<= (A(1) XOR B(1)) XOR (A(0) AND B(0));
--C<= (A(1) AND B(1)) OR ((A(1) XOR B(1)) AND (A(0) AND B(0))) ;
--------------
--X(0)<= '1' WHEN ( (A[0]='0' and B[0]='1'));
--P<= '0' WHEN ( (A[0]='0' and B[0]='1'));
--X(0)<= '1' WHEN ( (A[0]='1' and B[0]='0'));
--P<='0' WHEN ( (A[0]='1' and B[0]='0'));
--
--X(0)<= '0' WHEN ( (A[0]='1' and B[0]='1'));
--P<= '1' WHEN ( (A[0]='1' and B[0]='1'));
--X(0)<= '0' WHEN ( (A[0]='1' and B[0]='1'));
--P<='1' WHEN ( (A[0]='1' and B[0]='1'));
--
--X(1)<= '1' WHEN ( (A[1]='0' and B[1]='1' and P='0'));
--C<= '0' WHEN ( (A[1]='0' and B[1]='1' and P='0'));
--X(1]<= '1' WHEN ( (A[1]='1' and B[1]='0' and P='0'));
--C<='0' WHEN ( (A[1]='1' and B[1]='0' and P='0'));
--
--X[1]<= '0' WHEN ( (A[1]='0' and B[1]='1' and P='1'));
--C<= '1' WHEN ( (A[1]='0' and B[1]='1' and P='1'));
--X[1]<= '0' WHEN ( (A[1]='1' and B[1]='0' and P='1'));
--C<='1' WHEN ( (A[1]='1' and B[1]='0' and P='1'));
--
--X[1]<= '0' WHEN ( (A[1]='1' and B[1]='1' and P='0'));
--C<= '1' WHEN ( (A[1]='1' and B[1]='1' and P='0'));
--X[1]<= '0' WHEN ( (A[1]='1' and B[1]='1' and P='0'));
--C<='1' WHEN ( (A[1]='1' and B[1]='1' and P='0'));
--
--X[1]<= '1' WHEN ( (A[1]='1' and B[1]='1' and P='1'));
--C<= '1' WHEN ( (A[1]='1' and B[1]='1' and P='1'));
--X[1]<= '1' WHEN ( (A[1]='1' and B[1]='1' and P='1'));
--C<='1' WHEN ( (A[1]='1' and B[1]='1' and P='1'));
----------------------------------
--X<= '1' WHEN ( A = B ) ELSE 
--'0';
-----------------------------------------------------
--X<=(A AND B)OR(C OR D)OR(D AND (NOT E));
-----------------------------------------------------
--X<= A AND B AND C AND D AND E AND F AND G AND H;
------------------------------------------------------
--F<=((NOT A) AND C AND (NOT D) ) OR ((NOT B) AND (C)) OR ((B) AND C and (NOT D));
--G<=((NOT A) and B) OR A OR (((NOT A) OR B  ) and ((NOT B) OR C OR (NOT D)));
end Behavioral;

