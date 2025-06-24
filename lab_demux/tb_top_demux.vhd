----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 24.06.2025 10:03:44
-- Design Name: 
-- Module Name: tb_top_demux - Behavioral
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

entity tb_top_demux is
--  Port ( );
end tb_top_demux;

architecture Behavioral of tb_top_demux is

component top_demux is
    port (
        input   : in std_logic_vector(3 downto 0);
        sel         : in std_logic_vector(1 downto 0);
        output_1    : out std_logic_vector(3 downto 0);
        output_2    : out std_logic_vector(3 downto 0);
        output_3    : out std_logic_vector(3 downto 0);
        output_4    : out std_logic_vector(3 downto 0) 
    );    
end component;

signal input       : std_logic_vector(3 downto 0) :=(others=>'0');
signal sel         : std_logic_vector(1 downto 0) :=(others=>'0');
signal output_1    : std_logic_vector(3 downto 0);
signal output_2    : std_logic_vector(3 downto 0);
signal output_3    : std_logic_vector(3 downto 0);
signal output_4    : std_logic_vector(3 downto 0);

begin

DUT: top_demux
    port map(
        input       => input,
        sel         => sel,
        output_1    => output_1,
        output_2    => output_2,
        output_3    => output_3,
        output_4    => output_4
    );

stim_p: process
begin
    input <= "1010";
    sel <= "00";
    wait for 100 ns;
    sel <= "01";
    wait for 100 ns;
    sel <= "10";
    wait for 100 ns;
    sel <= "11";
    wait for 100 ns;
end process;
            
end Behavioral;
