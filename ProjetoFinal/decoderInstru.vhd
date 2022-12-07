library ieee;
use ieee.std_logic_1164.all;

entity decoderInstru is
  port ( opcode : in std_logic_vector(5 downto 0);
			funct : in std_logic_vector(5 downto 0);
         saida : out std_logic_vector(21 downto 0)
  );
end entity;

architecture comportamento of decoderInstru is

  constant lw  : std_logic_vector(5 downto 0) := "100011";
  constant sw  : std_logic_vector(5 downto 0) := "101011";
  constant beq : std_logic_vector(5 downto 0) := "000100";
  constant bne : std_logic_vector(5 downto 0) := "000101";
  constant jmp : std_logic_vector(5 downto 0) := "000010";
  constant jal : std_logic_vector(5 downto 0) := "000011";
  constant lui : std_logic_vector(5 downto 0) := "001111";
  constant andi : std_logic_vector(5 downto 0) := "001100";
  constant ori : std_logic_vector(5 downto 0) := "001101";
  constant addi : std_logic_vector(5 downto 0) := "001000";
  constant slti : std_logic_vector(5 downto 0) := "001010";
  constant lbu : std_logic_vector(5 downto 0) := "100100";
  constant sb : std_logic_vector(5 downto 0) := "101000";
  constant op_r : std_logic_vector(5 downto 0) := "000000";
  
  constant jr_funct : std_logic_vector(5 downto 0) := "001000"; 
  

  begin
  -- primeiro bit da saida: JR
  -- segundo bit da saida: selMuxBeqPc4
  -- terceiro bit da saida: Mux(Rt/Rd)[0]
  -- quarto bit da saida: Mux(Rt/Rd)[1]
  -- quinto bit da saida: ORI_ANDI
  -- sexto bit da saida: habEscritaReg
  -- sétimo bit da saida: selMuxRtImed
  -- oitavo ao décimo terceiro bit da saida: opcode
  -- decimo quarto bit da saida: tipoR
  -- decimo quinto bit da saida: SB
  -- decimo sexto bit da saida: mux(ULA/mem)[0]
  -- decimo sétimo bit da saida: mux(ULA/mem)[1]
  -- decimo oitavoo bit da saida: BEQ
  -- decimo nono bit da saida: BNE
  -- vigésimo bit da saída: LBU
  -- vigésimo primeiro bit da saida: habLeituraMEM
  -- vigésimo segundo bit da saida: habEscritaMEM
  
  saida <= "0000011" & opcode & "000100010" when opcode = lw else
			  "0000001" & opcode & "000000001" when opcode = sw else
			  "0000000" & opcode & "000010000" when opcode = beq else
			  "0000000" & opcode & "000001000" when opcode = bne else
			  "0100000" & opcode & "000000000" when opcode = jmp else
			  "0110010" & opcode & "001000000" when opcode = jal else
			  "0000010" & opcode & "001100000" when opcode = lui else
			  "0000111" & opcode & "000000000" when opcode = andi else
			  "0000111" & opcode & "000000000" when opcode = ori else
			  "0000011" & opcode & "000000000" when opcode = addi else
			  "0000011" & opcode & "000000000" when opcode = slti else
			  "0000011" & opcode & "000100110" when opcode = lbu else
			  "0000001" & opcode & "010000001" when opcode = sb else
			  "1001000" & opcode & "100000000" when (opcode = op_r AND funct = jr_funct) else
			  "0001010" & opcode & "100000000" when opcode = op_r else
			  "0000000000000000000000"; -- nop
			  
end architecture;