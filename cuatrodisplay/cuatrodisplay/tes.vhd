--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:48:37 10/21/2019
-- Design Name:   
-- Module Name:   /home/juan/Documentos/Electronica DIgital/cuatrodisplay/cuatrodisplay/tes.vhd
-- Project Name:  cuatrodisplay
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: cautrodisplay
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
 
ENTITY tes IS
END tes;
 
ARCHITECTURE behavior OF tes IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT cautrodisplay
    PORT(
         num : IN  std_logic_vector(7 downto 0);
         clk : IN  std_logic;
         clk5 : OUT  std_logic;
         sseg : OUT  std_logic_vector(0 to 6);
         an : OUT  std_logic_vector(3 downto 0);
         rst : IN  std_logic;
         led : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal num : std_logic_vector(7 downto 0) := (others => '0');
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';

 	--Outputs
   signal clk5 : std_logic;
   signal sseg : std_logic_vector(0 to 6);
   signal an : std_logic_vector(3 downto 0);
   signal led : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
   constant clk5_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: cautrodisplay PORT MAP (
          num => num,
          clk => clk,
          clk5 => clk5,
          sseg => sseg,
          an => an,
          rst => rst,
          led => led
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 
   clk5_process :process
   begin
		clk5 <= '0';
		wait for clk5_period/2;
		clk5 <= '1';
		wait for clk5_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
