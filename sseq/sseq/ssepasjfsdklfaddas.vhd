--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:51:18 10/21/2019
-- Design Name:   
-- Module Name:   /home/juan/Documentos/Electronica DIgital/sseq/sseq/ssepasjfsdklfaddas.vhd
-- Project Name:  sseq
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: sseq
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY ssepasjfsdklfaddas IS
END ssepasjfsdklfaddas;
 
ARCHITECTURE behavior OF ssepasjfsdklfaddas IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT sseq
    PORT(
         X : IN  std_logic;
         Y : IN  std_logic;
         clk : IN  std_logic;
         Z : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal X : std_logic := '0';
   signal Y : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal Z : std_logic;


 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: sseq PORT MAP (
          X => X,
          Y => Y,
          clk => clk,
          Z => Z
        );

   X <= '0' after 100 ns, '1' after 200 ns,'0' after 300 ns,'1' after 400 ns;
Y <= '1' after 100 ns, '1' after 200 ns,'1' after 300 ns,'1' after 400 ns;
clk <= '1' after 210 ns;

END;
