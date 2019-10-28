--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:40:04 10/21/2019
-- Design Name:   
-- Module Name:   /home/juan/Documentos/Electronica DIgital/sseq/sseq/pruflipo.vhd
-- Project Name:  sseq
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: flipflopD
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
 
ENTITY pruflipo IS
END pruflipo;
 
ARCHITECTURE behavior OF pruflipo IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT flipflopD
    PORT(
         Q : OUT  std_logic;
         Qbar : OUT  std_logic;
         D : IN  std_logic;
         Clk : IN  std_logic;
         Reset : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal D : std_logic := '0';
   signal Clk : std_logic := '0';
   signal Reset : std_logic := '0';

 	--Outputs
   signal Q : std_logic;
   signal Qbar : std_logic;

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: flipflopD PORT MAP (
          Q => Q,
          Qbar => Qbar,
          D => D,
          Clk => Clk,
          Reset => Reset
        );

   D <= '0' after 100 ns, '1' after 200 ns,'0' after 300 ns,'1' after 400 ns;
Reset <= '0' after 90 ns;
Clk <= '1' after 210 ns;
END;
