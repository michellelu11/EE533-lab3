--------------------------------------------------------------------------------
-- Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 10.1
--  \   \         Application : sch2vhdl
--  /   /         Filename : comparator.vhf
-- /___/   /\     Timestamp : 01/30/2026 20:55:02
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2vhdl.exe -intstyle ise -family spartan3e -flat -suppress -w C:/EE533/lab3newnew/comparator.sch comparator.vhf
--Design Name: comparator
--Device: spartan3e
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesis and simulted, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity COMP8_MXILINX_comparator is
   port ( A  : in    std_logic_vector (7 downto 0); 
          B  : in    std_logic_vector (7 downto 0); 
          EQ : out   std_logic);
end COMP8_MXILINX_comparator;

architecture BEHAVIORAL of COMP8_MXILINX_comparator is
   attribute BOX_TYPE   : string ;
   signal AB0  : std_logic;
   signal AB1  : std_logic;
   signal AB2  : std_logic;
   signal AB3  : std_logic;
   signal AB4  : std_logic;
   signal AB5  : std_logic;
   signal AB6  : std_logic;
   signal AB7  : std_logic;
   signal AB03 : std_logic;
   signal AB47 : std_logic;
   component AND4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND4 : component is "BLACK_BOX";
   
   component XNOR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of XNOR2 : component is "BLACK_BOX";
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
begin
   I_36_32 : AND4
      port map (I0=>AB7,
                I1=>AB6,
                I2=>AB5,
                I3=>AB4,
                O=>AB47);
   
   I_36_33 : XNOR2
      port map (I0=>B(6),
                I1=>A(6),
                O=>AB6);
   
   I_36_34 : XNOR2
      port map (I0=>B(7),
                I1=>A(7),
                O=>AB7);
   
   I_36_35 : XNOR2
      port map (I0=>B(5),
                I1=>A(5),
                O=>AB5);
   
   I_36_36 : XNOR2
      port map (I0=>B(4),
                I1=>A(4),
                O=>AB4);
   
   I_36_41 : AND4
      port map (I0=>AB3,
                I1=>AB2,
                I2=>AB1,
                I3=>AB0,
                O=>AB03);
   
   I_36_42 : XNOR2
      port map (I0=>B(2),
                I1=>A(2),
                O=>AB2);
   
   I_36_43 : XNOR2
      port map (I0=>B(3),
                I1=>A(3),
                O=>AB3);
   
   I_36_44 : XNOR2
      port map (I0=>B(1),
                I1=>A(1),
                O=>AB1);
   
   I_36_45 : XNOR2
      port map (I0=>B(0),
                I1=>A(0),
                O=>AB0);
   
   I_36_50 : AND2
      port map (I0=>AB47,
                I1=>AB03,
                O=>EQ);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity AND7_MXILINX_comparator is
   port ( I0 : in    std_logic; 
          I1 : in    std_logic; 
          I2 : in    std_logic; 
          I3 : in    std_logic; 
          I4 : in    std_logic; 
          I5 : in    std_logic; 
          I6 : in    std_logic; 
          O  : out   std_logic);
end AND7_MXILINX_comparator;

architecture BEHAVIORAL of AND7_MXILINX_comparator is
   attribute BOX_TYPE   : string ;
   attribute RLOC       : string ;
   signal I36     : std_logic;
   signal O_DUMMY : std_logic;
   component AND4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND4 : component is "BLACK_BOX";
   
   component FMAP
      port ( I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             O  : in    std_logic);
   end component;
   attribute BOX_TYPE of FMAP : component is "BLACK_BOX";
   
   attribute RLOC of I_36_98 : label is "X0Y0";
   attribute RLOC of I_36_110 : label is "X0Y0";
begin
   O <= O_DUMMY;
   I_36_69 : AND4
      port map (I0=>I3,
                I1=>I4,
                I2=>I5,
                I3=>I6,
                O=>I36);
   
   I_36_85 : AND4
      port map (I0=>I0,
                I1=>I1,
                I2=>I2,
                I3=>I36,
                O=>O_DUMMY);
   
   I_36_98 : FMAP
      port map (I1=>I0,
                I2=>I1,
                I3=>I2,
                I4=>I36,
                O=>O_DUMMY);
   
   I_36_110 : FMAP
      port map (I1=>I3,
                I2=>I4,
                I3=>I5,
                I4=>I6,
                O=>I36);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity comparator is
   port ( a     : in    std_logic_vector (55 downto 0); 
          amask : in    std_logic_vector (6 downto 0); 
          b     : in    std_logic_vector (55 downto 0); 
          match : out   std_logic);
end comparator;

architecture BEHAVIORAL of comparator is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal XLXN_74 : std_logic;
   signal XLXN_75 : std_logic;
   signal XLXN_76 : std_logic;
   signal XLXN_77 : std_logic;
   signal XLXN_78 : std_logic;
   signal XLXN_79 : std_logic;
   signal XLXN_80 : std_logic;
   signal XLXN_89 : std_logic;
   signal XLXN_90 : std_logic;
   signal XLXN_93 : std_logic;
   signal XLXN_94 : std_logic;
   signal XLXN_95 : std_logic;
   signal XLXN_96 : std_logic;
   signal XLXN_98 : std_logic;
   component COMP8_MXILINX_comparator
      port ( A  : in    std_logic_vector (7 downto 0); 
             B  : in    std_logic_vector (7 downto 0); 
             EQ : out   std_logic);
   end component;
   
   component OR2B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2B1 : component is "BLACK_BOX";
   
   component AND7_MXILINX_comparator
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             I5 : in    std_logic; 
             I6 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   attribute HU_SET of XLXI_1 : label is "XLXI_1_0";
   attribute HU_SET of XLXI_2 : label is "XLXI_2_1";
   attribute HU_SET of XLXI_3 : label is "XLXI_3_2";
   attribute HU_SET of XLXI_4 : label is "XLXI_4_3";
   attribute HU_SET of XLXI_5 : label is "XLXI_5_5";
   attribute HU_SET of XLXI_6 : label is "XLXI_6_6";
   attribute HU_SET of XLXI_7 : label is "XLXI_7_7";
   attribute HU_SET of XLXI_21 : label is "XLXI_21_4";
begin
   XLXI_1 : COMP8_MXILINX_comparator
      port map (A(7 downto 0)=>b(55 downto 48),
                B(7 downto 0)=>b(55 downto 48),
                EQ=>XLXN_74);
   
   XLXI_2 : COMP8_MXILINX_comparator
      port map (A(7 downto 0)=>a(47 downto 40),
                B(7 downto 0)=>b(47 downto 40),
                EQ=>XLXN_75);
   
   XLXI_3 : COMP8_MXILINX_comparator
      port map (A(7 downto 0)=>a(39 downto 32),
                B(7 downto 0)=>b(39 downto 32),
                EQ=>XLXN_76);
   
   XLXI_4 : COMP8_MXILINX_comparator
      port map (A(7 downto 0)=>a(31 downto 24),
                B(7 downto 0)=>b(31 downto 24),
                EQ=>XLXN_77);
   
   XLXI_5 : COMP8_MXILINX_comparator
      port map (A(7 downto 0)=>a(23 downto 16),
                B(7 downto 0)=>b(23 downto 16),
                EQ=>XLXN_78);
   
   XLXI_6 : COMP8_MXILINX_comparator
      port map (A(7 downto 0)=>a(15 downto 8),
                B(7 downto 0)=>b(15 downto 8),
                EQ=>XLXN_79);
   
   XLXI_7 : COMP8_MXILINX_comparator
      port map (A(7 downto 0)=>a(7 downto 0),
                B(7 downto 0)=>b(7 downto 0),
                EQ=>XLXN_80);
   
   XLXI_14 : OR2B1
      port map (I0=>amask(6),
                I1=>XLXN_74,
                O=>XLXN_98);
   
   XLXI_15 : OR2B1
      port map (I0=>amask(5),
                I1=>XLXN_75,
                O=>XLXN_96);
   
   XLXI_16 : OR2B1
      port map (I0=>amask(4),
                I1=>XLXN_76,
                O=>XLXN_95);
   
   XLXI_17 : OR2B1
      port map (I0=>amask(3),
                I1=>XLXN_77,
                O=>XLXN_94);
   
   XLXI_18 : OR2B1
      port map (I0=>amask(2),
                I1=>XLXN_78,
                O=>XLXN_89);
   
   XLXI_19 : OR2B1
      port map (I0=>amask(1),
                I1=>XLXN_79,
                O=>XLXN_90);
   
   XLXI_20 : OR2B1
      port map (I0=>amask(0),
                I1=>XLXN_80,
                O=>XLXN_93);
   
   XLXI_21 : AND7_MXILINX_comparator
      port map (I0=>XLXN_94,
                I1=>XLXN_95,
                I2=>XLXN_93,
                I3=>XLXN_90,
                I4=>XLXN_89,
                I5=>XLXN_96,
                I6=>XLXN_98,
                O=>match);
   
end BEHAVIORAL;


