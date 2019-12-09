---2019 BIN-TO-VHD CONVERTER 1.0
---Copyright William D. Richard, Ph.D.

LIBRARY IEEE ;
USE IEEE.STD_LOGIC_1164.ALL ;
USE IEEE.STD_LOGIC_ARITH.ALL;

ENTITY eprom IS
   PORT (d        : OUT STD_LOGIC_VECTOR(31 DOWNTO 0) ;
         address  : IN  STD_LOGIC_VECTOR(9 DOWNTO 0) ;
         ce_l     : IN  STD_LOGIC ;
         oe_l     : IN  STD_LOGIC) ;
   END eprom ;

ARCHITECTURE behavioral OF eprom IS

   SIGNAL data    : STD_LOGIC_VECTOR(31 DOWNTO 0) ;
   SIGNAL sel     : STD_LOGIC_VECTOR(31 DOWNTO 0) ;

BEGIN

   sel <= "00000000000000000000" & address & "00" ;

   WITH sel  SELECT
   data <=
      X"309ffffc" WHEN X"00000000" , 
      X"2900005c" WHEN X"00000004" , 
      X"38401000" WHEN X"00000008" , 
      X"a8420001" WHEN X"0000000c" , 
      X"40081003" WHEN X"00000010" , 
      X"28400000" WHEN X"00000014" , 
      X"2fc00020" WHEN X"00000018" , 
      X"379fffe0" WHEN X"0000001c" , 
      X"187c0000" WHEN X"00000020" , 
      X"6fbc0008" WHEN X"00000024" , 
      X"a0fc2000" WHEN X"00000028" , 
      X"403e3003" WHEN X"0000002c" , 
      X"2f400038" WHEN X"00000030" , 
      X"2fc0003c" WHEN X"00000034" , 
      X"379fffc4" WHEN X"00000038" , 
      X"087c0000" WHEN X"0000003c" , 
      X"68420001" WHEN X"00000040" , 
      X"187c0000" WHEN X"00000044" , 
      X"6fbc0008" WHEN X"00000048" , 
      X"a0fc2000" WHEN X"0000004c" , 
      X"403e3003" WHEN X"00000050" , 
      X"403a0001" WHEN X"00000054" , 
      X"f8000000" WHEN X"00000058" , 
      X"28400000" WHEN X"0000005c" , 
      X"2fc00068" WHEN X"00000060" , 
      X"379fff9c" WHEN X"00000064" , 
      X"187c0000" WHEN X"00000068" , 
      X"6fbc0008" WHEN X"0000006c" , 
      X"a0fc2000" WHEN X"00000070" , 
      X"403e3003" WHEN X"00000074" , 
      X"2f400080" WHEN X"00000078" , 
      X"2fc00084" WHEN X"0000007c" , 
      X"379fff80" WHEN X"00000080" , 
      X"087c0000" WHEN X"00000084" , 
      X"68420001" WHEN X"00000088" , 
      X"187c0000" WHEN X"0000008c" , 
      X"6fbc0008" WHEN X"00000090" , 
      X"a0fc2000" WHEN X"00000094" , 
      X"403e3003" WHEN X"00000098" , 
      X"403a0001" WHEN X"0000009c" , 
      X"f8000000" WHEN X"000000a0" , 
      X"00000000" WHEN OTHERS ;

   readprocess:PROCESS(ce_l,oe_l,data)
   begin
      IF (ce_l = '0' AND oe_l = '0') THEN
         d(31 DOWNTO 0) <= data ;
      else
	 d(31 DOWNTO 0) <= (OTHERS => 'Z') ;
      END IF;
   END PROCESS readprocess ;

END behavioral ;
