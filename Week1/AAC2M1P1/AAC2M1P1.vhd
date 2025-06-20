--------------------------------------------------------------------------------
--                                                                            --
--               Application Assignment Problem 1 Module 1 Course 2           --
--                                                                            --
--------------------------------------------------------------------------------
--
-- 
-- @file AAC2M1P1.vhd
-- @brief Application Assignment 2-001 Example code with errors to be found
-- @version: 1.0 
-- Date of current revision:  @date 2018-08-08  
-- Target FPGA: [Intel Altera MAX10] 
-- Tools used: [Quartus Prime 16.1] for editing and synthesis 
--             [Modeltech ModelSIM 10.4a Student Edition] for simulation 
--             [Quartus Prime 16.1]  for place and route if applied
--             
--  Functional Description:  This file contains the entity VHDL code for a 
--              2-bit comparator.  The architecture is to be completed by the
--              student. 
--  Hierarchy:  Only 1 level for this simple device 
--  
--  Designed for: Coursera 
--                
--  Designed by:  @author Tim Scherr
--                University of Colorado
--
--      Copyright (c) 2018 by Tim Scherr
--
-- Redistribution, modification or use of this software in source or binary
-- forms is permitted as long as the files maintain this copyright. Users are
-- permitted to modify this and use it to learn about the field of HDl code.
-- Tim Scherr and the University of Colorado are not liable for any misuse
-- of this material.
------------------------------------------------------------------------------
-- 

Library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
 
entity comparator2 is
    -- size of each input
  port (
      A, B   : in std_logic_vector(1 downto 0);
      greater, equals, less  : out std_logic;
      greaterOrEq, notequal, lessOrEq  : out std_logic
   );
end comparator2 ; 
 
architecture comparator2_architecture of comparator2 is
begin
greater <= '1' when (A > B)
else '0';
equals <= '1' when (A = B)
else '0';
less <= '1' when (A < B)
else '0';
greaterOrEq <= '1' when (A >= B)
else '0';
notequal <= '1' when (A /= B)
else '0';
lessOrEq <= '1' when (A <= B)
else '0';

                                    
end comparator2_architecture;                            	





    