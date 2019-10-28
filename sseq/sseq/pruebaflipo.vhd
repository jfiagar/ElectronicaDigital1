--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:35:02 10/21/2019
-- Design Name:   
-- Module Name:   /home/juan/Documentos/Electronica DIgital/sseq/sseq/pruebaflipo.vhd
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
 
ENTITY pruebaflipo IS
END pruebaflipo;
 
ARCHITECTURE behavior OF pruebaflipo IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT flipflopD
    PORT(
         D : IN  std_logic;
         CLK : IN  std_logic;
         Q : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal D : std_logic := '0';
   signal CLK : std_logic := '0';
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: flipflopD PORT MAP (
          D => D,
          CLK => CLK,
          Q => Q
        );
		  
		  D <= '0' after 1000ns,'1' after 2000ns,'0' after 3000ns,'1' after 4000ns

END;
