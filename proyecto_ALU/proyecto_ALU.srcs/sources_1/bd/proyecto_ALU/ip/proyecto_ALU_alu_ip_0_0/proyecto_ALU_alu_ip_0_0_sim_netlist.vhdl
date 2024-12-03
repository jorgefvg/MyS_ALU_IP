-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
-- Date        : Sat Nov 30 04:06:52 2024
-- Host        : LAPTOP-J78861QH running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/jfvas/Desktop/ClasesMaestria/MyS/MyS_ALU/proyecto_ALU/proyecto_ALU.srcs/sources_1/bd/proyecto_ALU/ip/proyecto_ALU_alu_ip_0_0/proyecto_ALU_alu_ip_0_0_sim_netlist.vhdl
-- Design      : proyecto_ALU_alu_ip_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity proyecto_ALU_alu_ip_0_0_divider4b is
  port (
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_reg2_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    O : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_reg1_reg[1]\ : in STD_LOGIC;
    \slv_reg0_reg[2]\ : in STD_LOGIC;
    \slv_reg0_reg[2]_0\ : in STD_LOGIC;
    \slv_reg1_reg[3]\ : in STD_LOGIC;
    \slv_reg1_reg[3]_0\ : in STD_LOGIC;
    \slv_reg1_reg[3]_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of proyecto_ALU_alu_ip_0_0_divider4b : entity is "divider4b";
end proyecto_ALU_alu_ip_0_0_divider4b;

architecture STRUCTURE of proyecto_ALU_alu_ip_0_0_divider4b is
  signal dividend_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal divisor_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \int_result[1]_i_2_n_0\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal quot_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \quot_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \quot_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \quot_reg[0]_i_4_n_0\ : STD_LOGIC;
  signal \quot_reg[0]_i_5_n_0\ : STD_LOGIC;
  signal \quot_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \quot_reg[3]_i_1_n_0\ : STD_LOGIC;
begin
\dividend_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Q(0),
      Q => dividend_reg(0),
      R => '0'
    );
\dividend_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Q(1),
      Q => dividend_reg(1),
      R => '0'
    );
\dividend_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Q(2),
      Q => dividend_reg(2),
      R => '0'
    );
\dividend_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Q(3),
      Q => dividend_reg(3),
      R => '0'
    );
\divisor_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \slv_reg1_reg[3]_1\(0),
      Q => divisor_reg(0),
      R => '0'
    );
\divisor_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \slv_reg1_reg[3]_1\(1),
      Q => divisor_reg(1),
      R => '0'
    );
\divisor_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \slv_reg1_reg[3]_1\(2),
      Q => divisor_reg(2),
      R => '0'
    );
\divisor_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \slv_reg1_reg[3]_1\(3),
      Q => divisor_reg(3),
      R => '0'
    );
\int_result[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B800B8FFB8FFB800"
    )
        port map (
      I0 => quot_reg(0),
      I1 => \slv_reg2_reg[1]\(0),
      I2 => O(0),
      I3 => \slv_reg2_reg[1]\(1),
      I4 => \slv_reg1_reg[3]_1\(0),
      I5 => Q(0),
      O => D(0)
    );
\int_result[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \int_result[1]_i_2_n_0\,
      I1 => \slv_reg2_reg[1]\(0),
      I2 => O(1),
      I3 => \slv_reg2_reg[1]\(1),
      I4 => \slv_reg1_reg[1]\,
      O => D(1)
    );
\int_result[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BB8B88B8BB88BB8"
    )
        port map (
      I0 => quot_reg(1),
      I1 => \slv_reg2_reg[1]\(1),
      I2 => \slv_reg1_reg[3]_1\(1),
      I3 => Q(1),
      I4 => Q(0),
      I5 => \slv_reg1_reg[3]_1\(0),
      O => \int_result[1]_i_2_n_0\
    );
\int_result[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => quot_reg(2),
      I1 => \slv_reg0_reg[2]\,
      I2 => \slv_reg2_reg[1]\(0),
      I3 => O(2),
      I4 => \slv_reg2_reg[1]\(1),
      I5 => \slv_reg0_reg[2]_0\,
      O => D(2)
    );
\int_result[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => quot_reg(3),
      I1 => \slv_reg1_reg[3]\,
      I2 => \slv_reg2_reg[1]\(0),
      I3 => O(3),
      I4 => \slv_reg2_reg[1]\(1),
      I5 => \slv_reg1_reg[3]_0\,
      O => D(3)
    );
\quot_reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \quot_reg[0]_i_2_n_0\,
      I1 => divisor_reg(3),
      I2 => \quot_reg[0]_i_3_n_0\,
      I3 => divisor_reg(2),
      I4 => \quot_reg[0]_i_4_n_0\,
      O => p_1_in(0)
    );
\quot_reg[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D444DDD400000000"
    )
        port map (
      I0 => divisor_reg(2),
      I1 => dividend_reg(2),
      I2 => \quot_reg[0]_i_5_n_0\,
      I3 => dividend_reg(1),
      I4 => divisor_reg(1),
      I5 => dividend_reg(3),
      O => \quot_reg[0]_i_2_n_0\
    );
\quot_reg[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"791873738A8A8888"
    )
        port map (
      I0 => dividend_reg(3),
      I1 => divisor_reg(1),
      I2 => dividend_reg(1),
      I3 => dividend_reg(0),
      I4 => divisor_reg(0),
      I5 => dividend_reg(2),
      O => \quot_reg[0]_i_3_n_0\
    );
\quot_reg[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B6FF2400F0FFF0FF"
    )
        port map (
      I0 => dividend_reg(3),
      I1 => dividend_reg(2),
      I2 => dividend_reg(1),
      I3 => divisor_reg(1),
      I4 => dividend_reg(0),
      I5 => divisor_reg(0),
      O => \quot_reg[0]_i_4_n_0\
    );
\quot_reg[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => dividend_reg(0),
      I1 => divisor_reg(0),
      O => \quot_reg[0]_i_5_n_0\
    );
\quot_reg[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \quot_reg[1]_i_2_n_0\,
      I1 => divisor_reg(3),
      O => p_1_in(1)
    );
\quot_reg[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"94DD0480D0DDD0DD"
    )
        port map (
      I0 => divisor_reg(2),
      I1 => dividend_reg(3),
      I2 => dividend_reg(2),
      I3 => divisor_reg(1),
      I4 => dividend_reg(1),
      I5 => divisor_reg(0),
      O => \quot_reg[1]_i_2_n_0\
    );
\quot_reg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000044045505"
    )
        port map (
      I0 => divisor_reg(2),
      I1 => dividend_reg(3),
      I2 => divisor_reg(0),
      I3 => dividend_reg(2),
      I4 => divisor_reg(1),
      I5 => divisor_reg(3),
      O => p_1_in(2)
    );
\quot_reg[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => divisor_reg(2),
      I1 => divisor_reg(0),
      I2 => divisor_reg(1),
      I3 => divisor_reg(3),
      O => \quot_reg[3]_i_1_n_0\
    );
\quot_reg[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000045"
    )
        port map (
      I0 => divisor_reg(2),
      I1 => dividend_reg(3),
      I2 => divisor_reg(0),
      I3 => divisor_reg(1),
      I4 => divisor_reg(3),
      O => p_1_in(3)
    );
\quot_reg_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_1_in(0),
      Q => quot_reg(0),
      S => \quot_reg[3]_i_1_n_0\
    );
\quot_reg_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_1_in(1),
      Q => quot_reg(1),
      S => \quot_reg[3]_i_1_n_0\
    );
\quot_reg_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_1_in(2),
      Q => quot_reg(2),
      S => \quot_reg[3]_i_1_n_0\
    );
\quot_reg_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_1_in(3),
      Q => quot_reg(3),
      S => \quot_reg[3]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity proyecto_ALU_alu_ip_0_0_multiplier4b is
  port (
    \int_result_reg[7]\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \int_result_reg[6]\ : out STD_LOGIC;
    \int_result_reg[5]\ : out STD_LOGIC;
    \int_result_reg[4]\ : out STD_LOGIC;
    DI : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_reg0_reg[1]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \slv_reg1_reg[2]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \slv_reg2_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of proyecto_ALU_alu_ip_0_0_multiplier4b : entity is "multiplier4b";
end proyecto_ALU_alu_ip_0_0_multiplier4b;

architecture STRUCTURE of proyecto_ALU_alu_ip_0_0_multiplier4b is
  signal Product : STD_LOGIC_VECTOR ( 6 downto 4 );
  signal \temp_product0__2_carry__0_n_2\ : STD_LOGIC;
  signal \temp_product0__2_carry__0_n_3\ : STD_LOGIC;
  signal \temp_product0__2_carry_n_0\ : STD_LOGIC;
  signal \temp_product0__2_carry_n_1\ : STD_LOGIC;
  signal \temp_product0__2_carry_n_2\ : STD_LOGIC;
  signal \temp_product0__2_carry_n_3\ : STD_LOGIC;
  signal \NLW_temp_product0__2_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \NLW_temp_product0__2_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \int_result[5]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \int_result[6]_i_1\ : label is "soft_lutpair0";
begin
\int_result[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg2_reg[1]\(0),
      I1 => Product(4),
      O => \int_result_reg[4]\
    );
\int_result[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg2_reg[1]\(0),
      I1 => Product(5),
      O => \int_result_reg[5]\
    );
\int_result[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg2_reg[1]\(0),
      I1 => Product(6),
      O => \int_result_reg[6]\
    );
\temp_product0__2_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \temp_product0__2_carry_n_0\,
      CO(2) => \temp_product0__2_carry_n_1\,
      CO(1) => \temp_product0__2_carry_n_2\,
      CO(0) => \temp_product0__2_carry_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => DI(2 downto 0),
      DI(0) => '0',
      O(3 downto 0) => \int_result_reg[7]\(3 downto 0),
      S(3 downto 0) => S(3 downto 0)
    );
\temp_product0__2_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \temp_product0__2_carry_n_0\,
      CO(3) => \int_result_reg[7]\(4),
      CO(2) => \NLW_temp_product0__2_carry__0_CO_UNCONNECTED\(2),
      CO(1) => \temp_product0__2_carry__0_n_2\,
      CO(0) => \temp_product0__2_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => \slv_reg0_reg[1]\(2 downto 0),
      O(3) => \NLW_temp_product0__2_carry__0_O_UNCONNECTED\(3),
      O(2 downto 0) => Product(6 downto 4),
      S(3) => '1',
      S(2 downto 0) => \slv_reg1_reg[2]\(2 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity proyecto_ALU_alu_ip_0_0_ALU is
  port (
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \slv_reg1_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \slv_reg2_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    sel0 : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of proyecto_ALU_alu_ip_0_0_ALU : entity is "ALU";
end proyecto_ALU_alu_ip_0_0_ALU;

architecture STRUCTURE of proyecto_ALU_alu_ip_0_0_ALU is
  signal CarryOut : STD_LOGIC;
  signal Product : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Result : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \axi_rdata[0]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_2_n_0\ : STD_LOGIC;
  signal divider_inst_n_0 : STD_LOGIC;
  signal divider_inst_n_1 : STD_LOGIC;
  signal divider_inst_n_2 : STD_LOGIC;
  signal divider_inst_n_3 : STD_LOGIC;
  signal int_carryout : STD_LOGIC;
  signal int_carryout_i_1_n_0 : STD_LOGIC;
  signal int_carryout_i_2_n_0 : STD_LOGIC;
  signal int_carryout_i_3_n_0 : STD_LOGIC;
  signal int_result : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \int_result[1]_i_3_n_0\ : STD_LOGIC;
  signal \int_result[2]_i_2_n_0\ : STD_LOGIC;
  signal \int_result[2]_i_3_n_0\ : STD_LOGIC;
  signal \int_result[3]_i_2_n_0\ : STD_LOGIC;
  signal \int_result[3]_i_3_n_0\ : STD_LOGIC;
  signal \int_result[3]_i_4_n_0\ : STD_LOGIC;
  signal \int_result[3]_i_5_n_0\ : STD_LOGIC;
  signal \int_result[7]_i_1_n_0\ : STD_LOGIC;
  signal multiplier_inst_n_5 : STD_LOGIC;
  signal multiplier_inst_n_6 : STD_LOGIC;
  signal multiplier_inst_n_7 : STD_LOGIC;
  signal temp_product : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \temp_product0__2_carry__0_i_10_n_0\ : STD_LOGIC;
  signal \temp_product0__2_carry__0_i_11_n_0\ : STD_LOGIC;
  signal \temp_product0__2_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \temp_product0__2_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \temp_product0__2_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \temp_product0__2_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \temp_product0__2_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \temp_product0__2_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \temp_product0__2_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \temp_product0__2_carry__0_i_9_n_0\ : STD_LOGIC;
  signal \temp_product0__2_carry_i_1_n_0\ : STD_LOGIC;
  signal \temp_product0__2_carry_i_2_n_0\ : STD_LOGIC;
  signal \temp_product0__2_carry_i_3_n_0\ : STD_LOGIC;
  signal \temp_product0__2_carry_i_4_n_0\ : STD_LOGIC;
  signal \temp_product0__2_carry_i_5_n_0\ : STD_LOGIC;
  signal \temp_product0__2_carry_i_6_n_0\ : STD_LOGIC;
  signal \temp_product0__2_carry_i_7_n_0\ : STD_LOGIC;
  signal \temp_product0__2_carry_i_8_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \axi_rdata[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \axi_rdata[3]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \axi_rdata[4]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \axi_rdata[5]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \axi_rdata[6]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \axi_rdata[7]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \int_result[1]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \int_result[3]_i_4\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \int_result[3]_i_5\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \temp_product0__2_carry__0_i_7\ : label is "soft_lutpair1";
begin
CarryOut_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => int_carryout,
      Q => CarryOut,
      R => '0'
    );
\Result_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => int_result(0),
      Q => Result(0),
      R => '0'
    );
\Result_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => int_result(1),
      Q => Result(1),
      R => '0'
    );
\Result_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => int_result(2),
      Q => Result(2),
      R => '0'
    );
\Result_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => int_result(3),
      Q => Result(3),
      R => '0'
    );
\Result_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => int_result(4),
      Q => Result(4),
      R => '0'
    );
\Result_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => int_result(5),
      Q => Result(5),
      R => '0'
    );
\Result_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => int_result(6),
      Q => Result(6),
      R => '0'
    );
\Result_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => int_result(7),
      Q => Result(7),
      R => '0'
    );
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1010FF00"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(1),
      I2 => CarryOut,
      I3 => \axi_rdata[0]_i_2_n_0\,
      I4 => sel0(2),
      O => D(0)
    );
\axi_rdata[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Result(0),
      I1 => \slv_reg2_reg[7]\(0),
      I2 => sel0(1),
      I3 => \slv_reg1_reg[7]\(0),
      I4 => sel0(0),
      I5 => Q(0),
      O => \axi_rdata[0]_i_2_n_0\
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \axi_rdata[1]_i_2_n_0\,
      I1 => sel0(2),
      O => D(1)
    );
\axi_rdata[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Result(1),
      I1 => \slv_reg2_reg[7]\(1),
      I2 => sel0(1),
      I3 => \slv_reg1_reg[7]\(1),
      I4 => sel0(0),
      I5 => Q(1),
      O => \axi_rdata[1]_i_2_n_0\
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \axi_rdata[2]_i_2_n_0\,
      I1 => sel0(2),
      O => D(2)
    );
\axi_rdata[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Result(2),
      I1 => \slv_reg2_reg[7]\(2),
      I2 => sel0(1),
      I3 => \slv_reg1_reg[7]\(2),
      I4 => sel0(0),
      I5 => Q(2),
      O => \axi_rdata[2]_i_2_n_0\
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \axi_rdata[3]_i_2_n_0\,
      I1 => sel0(2),
      O => D(3)
    );
\axi_rdata[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Result(3),
      I1 => \slv_reg2_reg[7]\(3),
      I2 => sel0(1),
      I3 => \slv_reg1_reg[7]\(3),
      I4 => sel0(0),
      I5 => Q(3),
      O => \axi_rdata[3]_i_2_n_0\
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \axi_rdata[4]_i_2_n_0\,
      I1 => sel0(2),
      O => D(4)
    );
\axi_rdata[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Result(4),
      I1 => \slv_reg2_reg[7]\(4),
      I2 => sel0(1),
      I3 => \slv_reg1_reg[7]\(4),
      I4 => sel0(0),
      I5 => Q(4),
      O => \axi_rdata[4]_i_2_n_0\
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \axi_rdata[5]_i_2_n_0\,
      I1 => sel0(2),
      O => D(5)
    );
\axi_rdata[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Result(5),
      I1 => \slv_reg2_reg[7]\(5),
      I2 => sel0(1),
      I3 => \slv_reg1_reg[7]\(5),
      I4 => sel0(0),
      I5 => Q(5),
      O => \axi_rdata[5]_i_2_n_0\
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \axi_rdata[6]_i_2_n_0\,
      I1 => sel0(2),
      O => D(6)
    );
\axi_rdata[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Result(6),
      I1 => \slv_reg2_reg[7]\(6),
      I2 => sel0(1),
      I3 => \slv_reg1_reg[7]\(6),
      I4 => sel0(0),
      I5 => Q(6),
      O => \axi_rdata[6]_i_2_n_0\
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \axi_rdata[7]_i_2_n_0\,
      I1 => sel0(2),
      O => D(7)
    );
\axi_rdata[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Result(7),
      I1 => \slv_reg2_reg[7]\(7),
      I2 => sel0(1),
      I3 => \slv_reg1_reg[7]\(7),
      I4 => sel0(0),
      I5 => Q(7),
      O => \axi_rdata[7]_i_2_n_0\
    );
divider_inst: entity work.proyecto_ALU_alu_ip_0_0_divider4b
     port map (
      D(3) => divider_inst_n_0,
      D(2) => divider_inst_n_1,
      D(1) => divider_inst_n_2,
      D(0) => divider_inst_n_3,
      O(3 downto 0) => Product(3 downto 0),
      Q(3 downto 0) => Q(3 downto 0),
      s_axi_aclk => s_axi_aclk,
      \slv_reg0_reg[2]\ => \int_result[2]_i_2_n_0\,
      \slv_reg0_reg[2]_0\ => \int_result[2]_i_3_n_0\,
      \slv_reg1_reg[1]\ => \int_result[1]_i_3_n_0\,
      \slv_reg1_reg[3]\ => \int_result[3]_i_2_n_0\,
      \slv_reg1_reg[3]_0\ => \int_result[3]_i_3_n_0\,
      \slv_reg1_reg[3]_1\(3 downto 0) => \slv_reg1_reg[7]\(3 downto 0),
      \slv_reg2_reg[1]\(1 downto 0) => \slv_reg2_reg[7]\(1 downto 0)
    );
int_carryout_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000B3B0F8C8"
    )
        port map (
      I0 => int_carryout_i_2_n_0,
      I1 => \slv_reg2_reg[7]\(0),
      I2 => Q(3),
      I3 => int_carryout_i_3_n_0,
      I4 => \slv_reg1_reg[7]\(3),
      I5 => \slv_reg2_reg[7]\(1),
      O => int_carryout_i_1_n_0
    );
int_carryout_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8088A8AAEAEEFEFF"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => Q(0),
      I3 => \slv_reg1_reg[7]\(0),
      I4 => \slv_reg1_reg[7]\(1),
      I5 => \slv_reg1_reg[7]\(2),
      O => int_carryout_i_2_n_0
    );
int_carryout_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEEEAAAA8888000"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => Q(0),
      I3 => \slv_reg1_reg[7]\(0),
      I4 => \slv_reg1_reg[7]\(1),
      I5 => \slv_reg1_reg[7]\(2),
      O => int_carryout_i_3_n_0
    );
int_carryout_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => int_carryout_i_1_n_0,
      Q => int_carryout,
      R => '0'
    );
\int_result[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9666"
    )
        port map (
      I0 => \slv_reg1_reg[7]\(1),
      I1 => Q(1),
      I2 => \slv_reg1_reg[7]\(0),
      I3 => Q(0),
      O => \int_result[1]_i_3_n_0\
    );
\int_result[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6696666696999696"
    )
        port map (
      I0 => Q(2),
      I1 => \slv_reg1_reg[7]\(2),
      I2 => \slv_reg1_reg[7]\(1),
      I3 => Q(0),
      I4 => \slv_reg1_reg[7]\(0),
      I5 => Q(1),
      O => \int_result[2]_i_2_n_0\
    );
\int_result[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9996969696666666"
    )
        port map (
      I0 => Q(2),
      I1 => \slv_reg1_reg[7]\(2),
      I2 => \slv_reg1_reg[7]\(1),
      I3 => \slv_reg1_reg[7]\(0),
      I4 => Q(0),
      I5 => Q(1),
      O => \int_result[2]_i_3_n_0\
    );
\int_result[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EDED48ED48ED4848"
    )
        port map (
      I0 => \slv_reg1_reg[7]\(3),
      I1 => int_carryout_i_2_n_0,
      I2 => Q(3),
      I3 => Q(2),
      I4 => \int_result[3]_i_4_n_0\,
      I5 => \slv_reg1_reg[7]\(2),
      O => \int_result[3]_i_2_n_0\
    );
\int_result[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAFB75F7105120A2"
    )
        port map (
      I0 => \slv_reg1_reg[7]\(3),
      I1 => Q(2),
      I2 => \int_result[3]_i_5_n_0\,
      I3 => \slv_reg1_reg[7]\(2),
      I4 => Q(3),
      I5 => int_carryout_i_3_n_0,
      O => \int_result[3]_i_3_n_0\
    );
\int_result[3]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20BA"
    )
        port map (
      I0 => \slv_reg1_reg[7]\(1),
      I1 => Q(0),
      I2 => \slv_reg1_reg[7]\(0),
      I3 => Q(1),
      O => \int_result[3]_i_4_n_0\
    );
\int_result[3]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"157F"
    )
        port map (
      I0 => \slv_reg1_reg[7]\(1),
      I1 => Q(0),
      I2 => \slv_reg1_reg[7]\(0),
      I3 => Q(1),
      O => \int_result[3]_i_5_n_0\
    );
\int_result[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg2_reg[7]\(1),
      I1 => Product(7),
      O => \int_result[7]_i_1_n_0\
    );
\int_result_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => divider_inst_n_3,
      Q => int_result(0),
      R => '0'
    );
\int_result_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => divider_inst_n_2,
      Q => int_result(1),
      R => '0'
    );
\int_result_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => divider_inst_n_1,
      Q => int_result(2),
      R => '0'
    );
\int_result_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => divider_inst_n_0,
      Q => int_result(3),
      R => '0'
    );
\int_result_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => multiplier_inst_n_7,
      Q => int_result(4),
      R => \slv_reg2_reg[7]\(0)
    );
\int_result_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => multiplier_inst_n_6,
      Q => int_result(5),
      R => \slv_reg2_reg[7]\(0)
    );
\int_result_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => multiplier_inst_n_5,
      Q => int_result(6),
      R => \slv_reg2_reg[7]\(0)
    );
\int_result_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \int_result[7]_i_1_n_0\,
      Q => int_result(7),
      R => \slv_reg2_reg[7]\(0)
    );
multiplier_inst: entity work.proyecto_ALU_alu_ip_0_0_multiplier4b
     port map (
      DI(2) => \temp_product0__2_carry_i_1_n_0\,
      DI(1) => \temp_product0__2_carry_i_2_n_0\,
      DI(0) => \temp_product0__2_carry_i_3_n_0\,
      S(3) => \temp_product0__2_carry_i_4_n_0\,
      S(2) => \temp_product0__2_carry_i_5_n_0\,
      S(1) => \temp_product0__2_carry_i_6_n_0\,
      S(0) => \temp_product0__2_carry_i_7_n_0\,
      \int_result_reg[4]\ => multiplier_inst_n_7,
      \int_result_reg[5]\ => multiplier_inst_n_6,
      \int_result_reg[6]\ => multiplier_inst_n_5,
      \int_result_reg[7]\(4) => Product(7),
      \int_result_reg[7]\(3 downto 0) => Product(3 downto 0),
      \slv_reg0_reg[1]\(2) => \temp_product0__2_carry__0_i_1_n_0\,
      \slv_reg0_reg[1]\(1) => \temp_product0__2_carry__0_i_2_n_0\,
      \slv_reg0_reg[1]\(0) => \temp_product0__2_carry__0_i_3_n_0\,
      \slv_reg1_reg[2]\(2) => \temp_product0__2_carry__0_i_4_n_0\,
      \slv_reg1_reg[2]\(1) => \temp_product0__2_carry__0_i_5_n_0\,
      \slv_reg1_reg[2]\(0) => \temp_product0__2_carry__0_i_6_n_0\,
      \slv_reg2_reg[1]\(0) => \slv_reg2_reg[7]\(1)
    );
\temp_product0__2_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8C0800080800000"
    )
        port map (
      I0 => Q(1),
      I1 => \slv_reg1_reg[7]\(3),
      I2 => Q(2),
      I3 => \slv_reg1_reg[7]\(1),
      I4 => \slv_reg1_reg[7]\(2),
      I5 => Q(3),
      O => \temp_product0__2_carry__0_i_1_n_0\
    );
\temp_product0__2_carry__0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C478BCF04C004C00"
    )
        port map (
      I0 => Q(1),
      I1 => \slv_reg1_reg[7]\(3),
      I2 => \slv_reg1_reg[7]\(2),
      I3 => Q(2),
      I4 => \slv_reg1_reg[7]\(1),
      I5 => Q(3),
      O => \temp_product0__2_carry__0_i_10_n_0\
    );
\temp_product0__2_carry__0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888800080008000"
    )
        port map (
      I0 => Q(0),
      I1 => \slv_reg1_reg[7]\(3),
      I2 => \slv_reg1_reg[7]\(2),
      I3 => Q(1),
      I4 => \slv_reg1_reg[7]\(1),
      I5 => Q(2),
      O => \temp_product0__2_carry__0_i_11_n_0\
    );
\temp_product0__2_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9000"
    )
        port map (
      I0 => \slv_reg1_reg[7]\(3),
      I1 => Q(2),
      I2 => \temp_product0__2_carry__0_i_7_n_0\,
      I3 => Q(3),
      O => \temp_product0__2_carry__0_i_2_n_0\
    );
\temp_product0__2_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => Q(3),
      I1 => \slv_reg1_reg[7]\(1),
      I2 => temp_product(0),
      I3 => Q(1),
      I4 => \slv_reg1_reg[7]\(2),
      I5 => \temp_product0__2_carry__0_i_9_n_0\,
      O => \temp_product0__2_carry__0_i_3_n_0\
    );
\temp_product0__2_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"175F8080A0000000"
    )
        port map (
      I0 => \slv_reg1_reg[7]\(2),
      I1 => \slv_reg1_reg[7]\(1),
      I2 => Q(2),
      I3 => Q(1),
      I4 => \slv_reg1_reg[7]\(3),
      I5 => Q(3),
      O => \temp_product0__2_carry__0_i_4_n_0\
    );
\temp_product0__2_carry__0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FF78008"
    )
        port map (
      I0 => Q(3),
      I1 => \temp_product0__2_carry__0_i_7_n_0\,
      I2 => Q(2),
      I3 => \slv_reg1_reg[7]\(3),
      I4 => \temp_product0__2_carry__0_i_10_n_0\,
      O => \temp_product0__2_carry__0_i_5_n_0\
    );
\temp_product0__2_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \temp_product0__2_carry__0_i_3_n_0\,
      I1 => \temp_product0__2_carry__0_i_11_n_0\,
      O => \temp_product0__2_carry__0_i_6_n_0\
    );
\temp_product0__2_carry__0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \slv_reg1_reg[7]\(1),
      I1 => \slv_reg1_reg[7]\(0),
      I2 => Q(0),
      I3 => Q(1),
      I4 => \slv_reg1_reg[7]\(2),
      O => \temp_product0__2_carry__0_i_7_n_0\
    );
\temp_product0__2_carry__0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(0),
      I1 => \slv_reg1_reg[7]\(0),
      O => temp_product(0)
    );
\temp_product0__2_carry__0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8777788878887888"
    )
        port map (
      I0 => Q(1),
      I1 => \slv_reg1_reg[7]\(3),
      I2 => \slv_reg1_reg[7]\(1),
      I3 => Q(3),
      I4 => \slv_reg1_reg[7]\(2),
      I5 => Q(2),
      O => \temp_product0__2_carry__0_i_9_n_0\
    );
\temp_product0__2_carry_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8777788878887888"
    )
        port map (
      I0 => \slv_reg1_reg[7]\(3),
      I1 => Q(0),
      I2 => \slv_reg1_reg[7]\(2),
      I3 => Q(1),
      I4 => Q(2),
      I5 => \slv_reg1_reg[7]\(1),
      O => \temp_product0__2_carry_i_1_n_0\
    );
\temp_product0__2_carry_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7888"
    )
        port map (
      I0 => \slv_reg1_reg[7]\(2),
      I1 => Q(0),
      I2 => \slv_reg1_reg[7]\(1),
      I3 => Q(1),
      O => \temp_product0__2_carry_i_2_n_0\
    );
\temp_product0__2_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(0),
      I1 => \slv_reg1_reg[7]\(1),
      O => \temp_product0__2_carry_i_3_n_0\
    );
\temp_product0__2_carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \temp_product0__2_carry_i_1_n_0\,
      I1 => \temp_product0__2_carry_i_8_n_0\,
      O => \temp_product0__2_carry_i_4_n_0\
    );
\temp_product0__2_carry_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8777788878887888"
    )
        port map (
      I0 => Q(1),
      I1 => \slv_reg1_reg[7]\(1),
      I2 => Q(0),
      I3 => \slv_reg1_reg[7]\(2),
      I4 => Q(2),
      I5 => \slv_reg1_reg[7]\(0),
      O => \temp_product0__2_carry_i_5_n_0\
    );
\temp_product0__2_carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7888"
    )
        port map (
      I0 => Q(1),
      I1 => \slv_reg1_reg[7]\(0),
      I2 => \slv_reg1_reg[7]\(1),
      I3 => Q(0),
      O => \temp_product0__2_carry_i_6_n_0\
    );
\temp_product0__2_carry_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(0),
      I1 => \slv_reg1_reg[7]\(0),
      O => \temp_product0__2_carry_i_7_n_0\
    );
\temp_product0__2_carry_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7888888888888888"
    )
        port map (
      I0 => \slv_reg1_reg[7]\(0),
      I1 => Q(3),
      I2 => \slv_reg1_reg[7]\(1),
      I3 => Q(0),
      I4 => Q(1),
      I5 => \slv_reg1_reg[7]\(2),
      O => \temp_product0__2_carry_i_8_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity proyecto_ALU_alu_ip_0_0_alu_ip_v1_0_S_AXI is
  port (
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aresetn : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of proyecto_ALU_alu_ip_0_0_alu_ip_v1_0_S_AXI : entity is "alu_ip_v1_0_S_AXI";
end proyecto_ALU_alu_ip_0_0_alu_ip_v1_0_S_AXI;

architecture STRUCTURE of proyecto_ALU_alu_ip_0_0_alu_ip_v1_0_S_AXI is
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[4]_i_1_n_0\ : STD_LOGIC;
  signal axi_arready0 : STD_LOGIC;
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[4]_i_1_n_0\ : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal axi_awready_i_1_n_0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal reg_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s_axi_bvalid\ : STD_LOGIC;
  signal \^s_axi_rvalid\ : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal slv_reg0 : STD_LOGIC_VECTOR ( 31 downto 4 );
  signal \slv_reg0[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg0_1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal slv_reg1 : STD_LOGIC_VECTOR ( 31 downto 4 );
  signal \slv_reg1[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg1_0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal slv_reg2 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \slv_reg2[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[10]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[11]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[12]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[13]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[14]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[15]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[16]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[17]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[18]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[19]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[20]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[21]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[22]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[23]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[24]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[25]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[26]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[27]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[28]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[29]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[2]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[30]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[31]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[3]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[4]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[5]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[6]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[7]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[8]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[9]\ : STD_LOGIC;
  signal slv_reg_rden : STD_LOGIC;
  signal \slv_reg_wren__2\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \axi_awaddr[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of axi_awready_i_2 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of axi_rvalid_i_1 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \slv_reg1[31]_i_2\ : label is "soft_lutpair7";
begin
  S_AXI_ARREADY <= \^s_axi_arready\;
  S_AXI_AWREADY <= \^s_axi_awready\;
  S_AXI_WREADY <= \^s_axi_wready\;
  s_axi_bvalid <= \^s_axi_bvalid\;
  s_axi_rvalid <= \^s_axi_rvalid\;
alu_inst: entity work.proyecto_ALU_alu_ip_0_0_ALU
     port map (
      D(7 downto 0) => reg_data_out(7 downto 0),
      Q(7 downto 4) => slv_reg0(7 downto 4),
      Q(3 downto 0) => slv_reg0_1(3 downto 0),
      s_axi_aclk => s_axi_aclk,
      sel0(2 downto 0) => sel0(2 downto 0),
      \slv_reg1_reg[7]\(7 downto 4) => slv_reg1(7 downto 4),
      \slv_reg1_reg[7]\(3 downto 0) => slv_reg1_0(3 downto 0),
      \slv_reg2_reg[7]\(7) => \slv_reg2_reg_n_0_[7]\,
      \slv_reg2_reg[7]\(6) => \slv_reg2_reg_n_0_[6]\,
      \slv_reg2_reg[7]\(5) => \slv_reg2_reg_n_0_[5]\,
      \slv_reg2_reg[7]\(4) => \slv_reg2_reg_n_0_[4]\,
      \slv_reg2_reg[7]\(3) => \slv_reg2_reg_n_0_[3]\,
      \slv_reg2_reg[7]\(2) => \slv_reg2_reg_n_0_[2]\,
      \slv_reg2_reg[7]\(1 downto 0) => slv_reg2(1 downto 0)
    );
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_araddr(0),
      I1 => s_axi_arvalid,
      I2 => \^s_axi_arready\,
      I3 => sel0(0),
      O => \axi_araddr[2]_i_1_n_0\
    );
\axi_araddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_araddr(1),
      I1 => s_axi_arvalid,
      I2 => \^s_axi_arready\,
      I3 => sel0(1),
      O => \axi_araddr[3]_i_1_n_0\
    );
\axi_araddr[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_araddr(2),
      I1 => s_axi_arvalid,
      I2 => \^s_axi_arready\,
      I3 => sel0(2),
      O => \axi_araddr[4]_i_1_n_0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \axi_araddr[2]_i_1_n_0\,
      Q => sel0(0),
      S => axi_awready_i_1_n_0
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \axi_araddr[3]_i_1_n_0\,
      Q => sel0(1),
      S => axi_awready_i_1_n_0
    );
\axi_araddr_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \axi_araddr[4]_i_1_n_0\,
      Q => sel0(2),
      S => axi_awready_i_1_n_0
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => \^s_axi_arready\,
      O => axi_arready0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_arready0,
      Q => \^s_axi_arready\,
      R => axi_awready_i_1_n_0
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => s_axi_awaddr(0),
      I1 => s_axi_wvalid,
      I2 => s_axi_awvalid,
      I3 => \^s_axi_awready\,
      I4 => p_0_in(0),
      O => \axi_awaddr[2]_i_1_n_0\
    );
\axi_awaddr[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => s_axi_awaddr(1),
      I1 => s_axi_wvalid,
      I2 => s_axi_awvalid,
      I3 => \^s_axi_awready\,
      I4 => p_0_in(1),
      O => \axi_awaddr[3]_i_1_n_0\
    );
\axi_awaddr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => s_axi_awaddr(2),
      I1 => s_axi_wvalid,
      I2 => s_axi_awvalid,
      I3 => \^s_axi_awready\,
      I4 => p_0_in(2),
      O => \axi_awaddr[4]_i_1_n_0\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \axi_awaddr[2]_i_1_n_0\,
      Q => p_0_in(0),
      R => axi_awready_i_1_n_0
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => p_0_in(1),
      R => axi_awready_i_1_n_0
    );
\axi_awaddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \axi_awaddr[4]_i_1_n_0\,
      Q => p_0_in(2),
      R => axi_awready_i_1_n_0
    );
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_aresetn,
      O => axi_awready_i_1_n_0
    );
axi_awready_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => s_axi_awvalid,
      I2 => \^s_axi_awready\,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_awready0,
      Q => \^s_axi_awready\,
      R => axi_awready_i_1_n_0
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF80008000"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => \^s_axi_awready\,
      I2 => \^s_axi_wready\,
      I3 => s_axi_wvalid,
      I4 => s_axi_bready,
      I5 => \^s_axi_bvalid\,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s_axi_bvalid\,
      R => axi_awready_i_1_n_0
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => slv_reg0(10),
      I1 => sel0(0),
      I2 => slv_reg1(10),
      I3 => sel0(1),
      I4 => \slv_reg2_reg_n_0_[10]\,
      I5 => sel0(2),
      O => reg_data_out(10)
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => slv_reg0(11),
      I1 => sel0(0),
      I2 => slv_reg1(11),
      I3 => sel0(1),
      I4 => \slv_reg2_reg_n_0_[11]\,
      I5 => sel0(2),
      O => reg_data_out(11)
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => slv_reg0(12),
      I1 => sel0(0),
      I2 => slv_reg1(12),
      I3 => sel0(1),
      I4 => \slv_reg2_reg_n_0_[12]\,
      I5 => sel0(2),
      O => reg_data_out(12)
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => slv_reg0(13),
      I1 => sel0(0),
      I2 => slv_reg1(13),
      I3 => sel0(1),
      I4 => \slv_reg2_reg_n_0_[13]\,
      I5 => sel0(2),
      O => reg_data_out(13)
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => slv_reg0(14),
      I1 => sel0(0),
      I2 => slv_reg1(14),
      I3 => sel0(1),
      I4 => \slv_reg2_reg_n_0_[14]\,
      I5 => sel0(2),
      O => reg_data_out(14)
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => slv_reg0(15),
      I1 => sel0(0),
      I2 => slv_reg1(15),
      I3 => sel0(1),
      I4 => \slv_reg2_reg_n_0_[15]\,
      I5 => sel0(2),
      O => reg_data_out(15)
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => slv_reg0(16),
      I1 => sel0(0),
      I2 => slv_reg1(16),
      I3 => sel0(1),
      I4 => \slv_reg2_reg_n_0_[16]\,
      I5 => sel0(2),
      O => reg_data_out(16)
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => slv_reg0(17),
      I1 => sel0(0),
      I2 => slv_reg1(17),
      I3 => sel0(1),
      I4 => \slv_reg2_reg_n_0_[17]\,
      I5 => sel0(2),
      O => reg_data_out(17)
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => slv_reg0(18),
      I1 => sel0(0),
      I2 => slv_reg1(18),
      I3 => sel0(1),
      I4 => \slv_reg2_reg_n_0_[18]\,
      I5 => sel0(2),
      O => reg_data_out(18)
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => slv_reg0(19),
      I1 => sel0(0),
      I2 => slv_reg1(19),
      I3 => sel0(1),
      I4 => \slv_reg2_reg_n_0_[19]\,
      I5 => sel0(2),
      O => reg_data_out(19)
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => slv_reg0(20),
      I1 => sel0(0),
      I2 => slv_reg1(20),
      I3 => sel0(1),
      I4 => \slv_reg2_reg_n_0_[20]\,
      I5 => sel0(2),
      O => reg_data_out(20)
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => slv_reg0(21),
      I1 => sel0(0),
      I2 => slv_reg1(21),
      I3 => sel0(1),
      I4 => \slv_reg2_reg_n_0_[21]\,
      I5 => sel0(2),
      O => reg_data_out(21)
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => slv_reg0(22),
      I1 => sel0(0),
      I2 => slv_reg1(22),
      I3 => sel0(1),
      I4 => \slv_reg2_reg_n_0_[22]\,
      I5 => sel0(2),
      O => reg_data_out(22)
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => slv_reg0(23),
      I1 => sel0(0),
      I2 => slv_reg1(23),
      I3 => sel0(1),
      I4 => \slv_reg2_reg_n_0_[23]\,
      I5 => sel0(2),
      O => reg_data_out(23)
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => slv_reg0(24),
      I1 => sel0(0),
      I2 => slv_reg1(24),
      I3 => sel0(1),
      I4 => \slv_reg2_reg_n_0_[24]\,
      I5 => sel0(2),
      O => reg_data_out(24)
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => slv_reg0(25),
      I1 => sel0(0),
      I2 => slv_reg1(25),
      I3 => sel0(1),
      I4 => \slv_reg2_reg_n_0_[25]\,
      I5 => sel0(2),
      O => reg_data_out(25)
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => slv_reg0(26),
      I1 => sel0(0),
      I2 => slv_reg1(26),
      I3 => sel0(1),
      I4 => \slv_reg2_reg_n_0_[26]\,
      I5 => sel0(2),
      O => reg_data_out(26)
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => slv_reg0(27),
      I1 => sel0(0),
      I2 => slv_reg1(27),
      I3 => sel0(1),
      I4 => \slv_reg2_reg_n_0_[27]\,
      I5 => sel0(2),
      O => reg_data_out(27)
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => slv_reg0(28),
      I1 => sel0(0),
      I2 => slv_reg1(28),
      I3 => sel0(1),
      I4 => \slv_reg2_reg_n_0_[28]\,
      I5 => sel0(2),
      O => reg_data_out(28)
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => slv_reg0(29),
      I1 => sel0(0),
      I2 => slv_reg1(29),
      I3 => sel0(1),
      I4 => \slv_reg2_reg_n_0_[29]\,
      I5 => sel0(2),
      O => reg_data_out(29)
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => slv_reg0(30),
      I1 => sel0(0),
      I2 => slv_reg1(30),
      I3 => sel0(1),
      I4 => \slv_reg2_reg_n_0_[30]\,
      I5 => sel0(2),
      O => reg_data_out(30)
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^s_axi_arready\,
      I1 => s_axi_arvalid,
      I2 => \^s_axi_rvalid\,
      O => slv_reg_rden
    );
\axi_rdata[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => slv_reg0(31),
      I1 => sel0(0),
      I2 => slv_reg1(31),
      I3 => sel0(1),
      I4 => \slv_reg2_reg_n_0_[31]\,
      I5 => sel0(2),
      O => reg_data_out(31)
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => slv_reg0(8),
      I1 => sel0(0),
      I2 => slv_reg1(8),
      I3 => sel0(1),
      I4 => \slv_reg2_reg_n_0_[8]\,
      I5 => sel0(2),
      O => reg_data_out(8)
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => slv_reg0(9),
      I1 => sel0(0),
      I2 => slv_reg1(9),
      I3 => sel0(1),
      I4 => \slv_reg2_reg_n_0_[9]\,
      I5 => sel0(2),
      O => reg_data_out(9)
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(0),
      Q => s_axi_rdata(0),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(10),
      Q => s_axi_rdata(10),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(11),
      Q => s_axi_rdata(11),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(12),
      Q => s_axi_rdata(12),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(13),
      Q => s_axi_rdata(13),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(14),
      Q => s_axi_rdata(14),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(15),
      Q => s_axi_rdata(15),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(16),
      Q => s_axi_rdata(16),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(17),
      Q => s_axi_rdata(17),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(18),
      Q => s_axi_rdata(18),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(19),
      Q => s_axi_rdata(19),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(1),
      Q => s_axi_rdata(1),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(20),
      Q => s_axi_rdata(20),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(21),
      Q => s_axi_rdata(21),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(22),
      Q => s_axi_rdata(22),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(23),
      Q => s_axi_rdata(23),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(24),
      Q => s_axi_rdata(24),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(25),
      Q => s_axi_rdata(25),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(26),
      Q => s_axi_rdata(26),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(27),
      Q => s_axi_rdata(27),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(28),
      Q => s_axi_rdata(28),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(29),
      Q => s_axi_rdata(29),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(2),
      Q => s_axi_rdata(2),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(30),
      Q => s_axi_rdata(30),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(31),
      Q => s_axi_rdata(31),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(3),
      Q => s_axi_rdata(3),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(4),
      Q => s_axi_rdata(4),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(5),
      Q => s_axi_rdata(5),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(6),
      Q => s_axi_rdata(6),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(7),
      Q => s_axi_rdata(7),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(8),
      Q => s_axi_rdata(8),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(9),
      Q => s_axi_rdata(9),
      R => axi_awready_i_1_n_0
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => \^s_axi_arready\,
      I2 => \^s_axi_rvalid\,
      I3 => s_axi_rready,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^s_axi_rvalid\,
      R => axi_awready_i_1_n_0
    );
axi_wready_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => s_axi_awvalid,
      I2 => \^s_axi_wready\,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_wready0,
      Q => \^s_axi_wready\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => p_0_in(2),
      I4 => s_axi_wstrb(1),
      O => \slv_reg0[15]_i_1_n_0\
    );
\slv_reg0[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => p_0_in(2),
      I4 => s_axi_wstrb(2),
      O => \slv_reg0[23]_i_1_n_0\
    );
\slv_reg0[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => p_0_in(2),
      I4 => s_axi_wstrb(3),
      O => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg0[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => p_0_in(2),
      I4 => s_axi_wstrb(0),
      O => \slv_reg0[7]_i_1_n_0\
    );
\slv_reg0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s_axi_wdata(0),
      Q => slv_reg0_1(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s_axi_wdata(10),
      Q => slv_reg0(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s_axi_wdata(11),
      Q => slv_reg0(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s_axi_wdata(12),
      Q => slv_reg0(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s_axi_wdata(13),
      Q => slv_reg0(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s_axi_wdata(14),
      Q => slv_reg0(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s_axi_wdata(15),
      Q => slv_reg0(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s_axi_wdata(16),
      Q => slv_reg0(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s_axi_wdata(17),
      Q => slv_reg0(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s_axi_wdata(18),
      Q => slv_reg0(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s_axi_wdata(19),
      Q => slv_reg0(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s_axi_wdata(1),
      Q => slv_reg0_1(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s_axi_wdata(20),
      Q => slv_reg0(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s_axi_wdata(21),
      Q => slv_reg0(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s_axi_wdata(22),
      Q => slv_reg0(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s_axi_wdata(23),
      Q => slv_reg0(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s_axi_wdata(24),
      Q => slv_reg0(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s_axi_wdata(25),
      Q => slv_reg0(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s_axi_wdata(26),
      Q => slv_reg0(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s_axi_wdata(27),
      Q => slv_reg0(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s_axi_wdata(28),
      Q => slv_reg0(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s_axi_wdata(29),
      Q => slv_reg0(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s_axi_wdata(2),
      Q => slv_reg0_1(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s_axi_wdata(30),
      Q => slv_reg0(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s_axi_wdata(31),
      Q => slv_reg0(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s_axi_wdata(3),
      Q => slv_reg0_1(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s_axi_wdata(4),
      Q => slv_reg0(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s_axi_wdata(5),
      Q => slv_reg0(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s_axi_wdata(6),
      Q => slv_reg0(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s_axi_wdata(7),
      Q => slv_reg0(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s_axi_wdata(8),
      Q => slv_reg0(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s_axi_wdata(9),
      Q => slv_reg0(9),
      R => axi_awready_i_1_n_0
    );
\slv_reg1[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(2),
      I2 => p_0_in(1),
      I3 => s_axi_wstrb(1),
      I4 => p_0_in(0),
      O => \slv_reg1[15]_i_1_n_0\
    );
\slv_reg1[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(2),
      I2 => p_0_in(1),
      I3 => s_axi_wstrb(2),
      I4 => p_0_in(0),
      O => \slv_reg1[23]_i_1_n_0\
    );
\slv_reg1[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(2),
      I2 => p_0_in(1),
      I3 => s_axi_wstrb(3),
      I4 => p_0_in(0),
      O => \slv_reg1[31]_i_1_n_0\
    );
\slv_reg1[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => \^s_axi_awready\,
      I2 => \^s_axi_wready\,
      I3 => s_axi_wvalid,
      O => \slv_reg_wren__2\
    );
\slv_reg1[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(2),
      I2 => p_0_in(1),
      I3 => s_axi_wstrb(0),
      I4 => p_0_in(0),
      O => \slv_reg1[7]_i_1_n_0\
    );
\slv_reg1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s_axi_wdata(0),
      Q => slv_reg1_0(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s_axi_wdata(10),
      Q => slv_reg1(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s_axi_wdata(11),
      Q => slv_reg1(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s_axi_wdata(12),
      Q => slv_reg1(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s_axi_wdata(13),
      Q => slv_reg1(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s_axi_wdata(14),
      Q => slv_reg1(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s_axi_wdata(15),
      Q => slv_reg1(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s_axi_wdata(16),
      Q => slv_reg1(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s_axi_wdata(17),
      Q => slv_reg1(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s_axi_wdata(18),
      Q => slv_reg1(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s_axi_wdata(19),
      Q => slv_reg1(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s_axi_wdata(1),
      Q => slv_reg1_0(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s_axi_wdata(20),
      Q => slv_reg1(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s_axi_wdata(21),
      Q => slv_reg1(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s_axi_wdata(22),
      Q => slv_reg1(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s_axi_wdata(23),
      Q => slv_reg1(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s_axi_wdata(24),
      Q => slv_reg1(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s_axi_wdata(25),
      Q => slv_reg1(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s_axi_wdata(26),
      Q => slv_reg1(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s_axi_wdata(27),
      Q => slv_reg1(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s_axi_wdata(28),
      Q => slv_reg1(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s_axi_wdata(29),
      Q => slv_reg1(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s_axi_wdata(2),
      Q => slv_reg1_0(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s_axi_wdata(30),
      Q => slv_reg1(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s_axi_wdata(31),
      Q => slv_reg1(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s_axi_wdata(3),
      Q => slv_reg1_0(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s_axi_wdata(4),
      Q => slv_reg1(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s_axi_wdata(5),
      Q => slv_reg1(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s_axi_wdata(6),
      Q => slv_reg1(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s_axi_wdata(7),
      Q => slv_reg1(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s_axi_wdata(8),
      Q => slv_reg1(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s_axi_wdata(9),
      Q => slv_reg1(9),
      R => axi_awready_i_1_n_0
    );
\slv_reg2[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(2),
      I2 => p_0_in(0),
      I3 => s_axi_wstrb(1),
      I4 => p_0_in(1),
      O => \slv_reg2[15]_i_1_n_0\
    );
\slv_reg2[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(2),
      I2 => p_0_in(0),
      I3 => s_axi_wstrb(2),
      I4 => p_0_in(1),
      O => \slv_reg2[23]_i_1_n_0\
    );
\slv_reg2[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(2),
      I2 => p_0_in(0),
      I3 => s_axi_wstrb(3),
      I4 => p_0_in(1),
      O => \slv_reg2[31]_i_1_n_0\
    );
\slv_reg2[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(2),
      I2 => p_0_in(0),
      I3 => s_axi_wstrb(0),
      I4 => p_0_in(1),
      O => \slv_reg2[7]_i_1_n_0\
    );
\slv_reg2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s_axi_wdata(0),
      Q => slv_reg2(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s_axi_wdata(10),
      Q => \slv_reg2_reg_n_0_[10]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s_axi_wdata(11),
      Q => \slv_reg2_reg_n_0_[11]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s_axi_wdata(12),
      Q => \slv_reg2_reg_n_0_[12]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s_axi_wdata(13),
      Q => \slv_reg2_reg_n_0_[13]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s_axi_wdata(14),
      Q => \slv_reg2_reg_n_0_[14]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s_axi_wdata(15),
      Q => \slv_reg2_reg_n_0_[15]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s_axi_wdata(16),
      Q => \slv_reg2_reg_n_0_[16]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s_axi_wdata(17),
      Q => \slv_reg2_reg_n_0_[17]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s_axi_wdata(18),
      Q => \slv_reg2_reg_n_0_[18]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s_axi_wdata(19),
      Q => \slv_reg2_reg_n_0_[19]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s_axi_wdata(1),
      Q => slv_reg2(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s_axi_wdata(20),
      Q => \slv_reg2_reg_n_0_[20]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s_axi_wdata(21),
      Q => \slv_reg2_reg_n_0_[21]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s_axi_wdata(22),
      Q => \slv_reg2_reg_n_0_[22]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s_axi_wdata(23),
      Q => \slv_reg2_reg_n_0_[23]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s_axi_wdata(24),
      Q => \slv_reg2_reg_n_0_[24]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s_axi_wdata(25),
      Q => \slv_reg2_reg_n_0_[25]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s_axi_wdata(26),
      Q => \slv_reg2_reg_n_0_[26]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s_axi_wdata(27),
      Q => \slv_reg2_reg_n_0_[27]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s_axi_wdata(28),
      Q => \slv_reg2_reg_n_0_[28]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s_axi_wdata(29),
      Q => \slv_reg2_reg_n_0_[29]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s_axi_wdata(2),
      Q => \slv_reg2_reg_n_0_[2]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s_axi_wdata(30),
      Q => \slv_reg2_reg_n_0_[30]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s_axi_wdata(31),
      Q => \slv_reg2_reg_n_0_[31]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s_axi_wdata(3),
      Q => \slv_reg2_reg_n_0_[3]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s_axi_wdata(4),
      Q => \slv_reg2_reg_n_0_[4]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s_axi_wdata(5),
      Q => \slv_reg2_reg_n_0_[5]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s_axi_wdata(6),
      Q => \slv_reg2_reg_n_0_[6]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s_axi_wdata(7),
      Q => \slv_reg2_reg_n_0_[7]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s_axi_wdata(8),
      Q => \slv_reg2_reg_n_0_[8]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s_axi_wdata(9),
      Q => \slv_reg2_reg_n_0_[9]\,
      R => axi_awready_i_1_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity proyecto_ALU_alu_ip_0_0_alu_ip_v1_0 is
  port (
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aresetn : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of proyecto_ALU_alu_ip_0_0_alu_ip_v1_0 : entity is "alu_ip_v1_0";
end proyecto_ALU_alu_ip_0_0_alu_ip_v1_0;

architecture STRUCTURE of proyecto_ALU_alu_ip_0_0_alu_ip_v1_0 is
begin
alu_ip_v1_0_S_AXI_inst: entity work.proyecto_ALU_alu_ip_0_0_alu_ip_v1_0_S_AXI
     port map (
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_AWREADY => S_AXI_AWREADY,
      S_AXI_WREADY => S_AXI_WREADY,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(2 downto 0) => s_axi_araddr(2 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(2 downto 0) => s_axi_awaddr(2 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity proyecto_ALU_alu_ip_0_0 is
  port (
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of proyecto_ALU_alu_ip_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of proyecto_ALU_alu_ip_0_0 : entity is "proyecto_ALU_alu_ip_0_0,alu_ip_v1_0,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of proyecto_ALU_alu_ip_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of proyecto_ALU_alu_ip_0_0 : entity is "alu_ip_v1_0,Vivado 2018.1";
end proyecto_ALU_alu_ip_0_0;

architecture STRUCTURE of proyecto_ALU_alu_ip_0_0 is
  signal \<const0>\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of s_axi_aclk : signal is "xilinx.com:signal:clock:1.0 S_AXI_CLK CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of s_axi_aclk : signal is "XIL_INTERFACENAME S_AXI_CLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN proyecto_ALU_processing_system7_0_0_FCLK_CLK0";
  attribute x_interface_info of s_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 S_AXI_RST RST";
  attribute x_interface_parameter of s_axi_aresetn : signal is "XIL_INTERFACENAME S_AXI_RST, POLARITY ACTIVE_LOW";
  attribute x_interface_info of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARREADY";
  attribute x_interface_info of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARVALID";
  attribute x_interface_info of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWREADY";
  attribute x_interface_info of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWVALID";
  attribute x_interface_info of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S_AXI BREADY";
  attribute x_interface_info of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI BVALID";
  attribute x_interface_info of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S_AXI RREADY";
  attribute x_interface_info of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI RVALID";
  attribute x_interface_info of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S_AXI WREADY";
  attribute x_interface_info of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI WVALID";
  attribute x_interface_info of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARADDR";
  attribute x_interface_info of s_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARPROT";
  attribute x_interface_info of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWADDR";
  attribute x_interface_parameter of s_axi_awaddr : signal is "XIL_INTERFACENAME S_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 5, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 5, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN proyecto_ALU_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0";
  attribute x_interface_info of s_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWPROT";
  attribute x_interface_info of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI BRESP";
  attribute x_interface_info of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  attribute x_interface_info of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI RRESP";
  attribute x_interface_info of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI WDATA";
  attribute x_interface_info of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S_AXI WSTRB";
begin
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.proyecto_ALU_alu_ip_0_0_alu_ip_v1_0
     port map (
      S_AXI_ARREADY => s_axi_arready,
      S_AXI_AWREADY => s_axi_awready,
      S_AXI_WREADY => s_axi_wready,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(2 downto 0) => s_axi_araddr(4 downto 2),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(2 downto 0) => s_axi_awaddr(4 downto 2),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
