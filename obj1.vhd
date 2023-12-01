----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/01/2023 02:03:35 PM
-- Design Name: 
-- Module Name: obj1 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity obj1 is
    Port ( A1 : in STD_LOGIC;
           A0 : in STD_LOGIC;
           B1 : in STD_LOGIC;
           B0 : in STD_LOGIC;
           GT : out STD_LOGIC;
           LT : out STD_LOGIC;
           ET : out STD_LOGIC);
end obj1;

architecture Behavioral of obj1 is
signal S0,S1 : STD_LOGIC;
begin
    S0 <= A0 xnor B0;
    S1 <= A1 xnor B1;
    
    ET <= A1 and S0;
    GT <= (A1 and (not B1)) or (S1 and A0 and (not B0));
    LT <= ((not A1) and B1) or (S1 and (not A0) and B0);
    


end Behavioral;
