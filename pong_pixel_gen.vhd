----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:24:21 02/14/2014 
-- Design Name: 
-- Module Name:    pong_pixel_gen - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity pong_pixel_gen is
	port(
          row      : in unsigned(10 downto 0);
          column   : in unsigned(10 downto 0);
          blank    : in std_logic;
          ball_x   : in unsigned(10 downto 0);
          ball_y   : in unsigned(10 downto 0);
          paddle_y : in unsigned(10 downto 0);
          r,g,b    : out std_logic_vector(7 downto 0)
		);	 
end pong_pixel_gen;

architecture Behavioral of pong_pixel_gen is

begin

	process(column, row, blank)
begin

r <= (others => '0');
g <= (others => '0');
b <= (others => '0');


if(blank = '0') then
if(column > 200 and column < 235 and row > 90 and row < 235) then
r <= (others => '0');
g <= (others => '0');
b <= (others => '1');
end if;
if(column > 235 and column < 270 and row > 90 and row < 235) then
r <= (others => '0');
g <= (others => '0');
b <= (others => '1');
end if;
if(column > 215 and column < 255 and row > 90 and row < 135) then
r <= (others => '0');
g <= (others => '0');
b <= (others => '1');
end if;
if(column > 215 and column < 255 and row > 90 and row < 135) then
r <= (others => '0');
g <= (others => '0');
b <= (others => '1');
end if;
if(column > 280 and column < 350 and row > 90 and row < 135) then
r <= (others => '0');
g <= (others => '0');
b <= (others => '1');
end if;
if(column > 280 and column < 315 and row > 115 and row < 210) then
r <= (others => '0');
g <= (others => '0');
b <= (others => '1');
end if;
if(column > 295 and column < 340 and row > 190 and row < 225) then
r <= (others => '0');
g <= (others => '0');
b <= (others => '1');
end if;
if(column > 0 and column < 15 and row > 90 and row < 235) then
		r <= (others => '1');
		g <= (others => '0');
		b <= (others => '0');
end if;
if(column > 150 and column < 170 and row > 90 and row < 110) then
	r <= (others => '0');
	g <= (others => '1');	
	b <= (others => '0');
end if;
else
r <= (others => '0');
g <= (others => '0');
b <= (others => '0');
end if;
	end process;
end Behavioral;

