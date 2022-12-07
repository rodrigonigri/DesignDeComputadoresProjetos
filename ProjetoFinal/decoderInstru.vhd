library ieee;
use ieee.std_logic_1164.all;

entity decoderInstru is
  port ( opcode : in std_logic_vector(5 downto 0);
			funct : in std_logic_vector(5 downto 0);
         saida : out std_logic_vector(19 downto 0)
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
  -- decimo quinto bit da saida: mux(ULA/mem)[0]
  -- decimo sexto bit da saida: mux(ULA/mem)[1]
  -- decimo sétimo bit da saida: BEQ
  -- decimo oitavo bit da saida: BNE
  -- decimo nono bit da saida: habLeituraMEM
  -- vigésimo bit da saida: habEscritaMEM
  
  saida <= "0000011" & opcode & "0010010" when opcode = lw else
			  "0000001" & opcode & "0000001" when opcode = sw else
			  "0000000" & opcode & "0001000" when opcode = beq else
			  "0000000" & opcode & "0000100" when opcode = bne else
			  "0100000" & opcode & "0000000" when opcode = jmp else
			  "0110010" & opcode & "0100000" when opcode = jal else
			  "0000010" & opcode & "0110000" when opcode = lui else
			  "0000111" & opcode & "0000000" when opcode = andi else
			  "0000111" & opcode & "0000000" when opcode = ori else
			  "0000011" & opcode & "0000000" when opcode = addi else
			  "0000011" & opcode & "0000000" when opcode = slti else
			  "1001000" & opcode & "1000000" when (opcode = op_r AND funct = jr_funct) else
			  "0001010" & opcode & "1000000" when opcode = op_r else
			  "00000000000000000000"; -- nop
			  
end architecture;