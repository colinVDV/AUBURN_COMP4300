use work.bv_arithmetic.all;
use work.dlx_types.all;
entity mux is
	generic (prop_delay: Time := 5ns);
	port (input_1, input_0: in dlx_word; which: in bit; output: out dlx_word);
end entity mux;

architecture behavior03 of mux is
begin
	mux: process(input_0, input_1, which)
	begin
		if (which = '0') then
			output <= input_0 after prop_delay;
		else
			output <= input_1 after prop_delay;
		end if;
	end process mux;
end architecture behavior03;