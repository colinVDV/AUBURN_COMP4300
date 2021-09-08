use work.bv_arithmetic.all;
use work.dlx_types.all;

entity sign_extend is
	generic (prop_delay: Time := 5ns);
	port (input: in half_word; output: out dlx_word);
end entity sign_extend;

architecture behavior05 of sign_extend is
begin
	sign_extend: process(input) is
	begin 	
		if (input(12) = '1') then
			output <= "1111111111111111" & input after prop_delay;
		else
			output <= "0000000000000000" & input after prop_delay;
		end if;
	end process sign_extend;
end architecture behavior05;