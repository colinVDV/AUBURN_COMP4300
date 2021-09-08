use work.bv_arithmetic.all;
use work.dlx_types.all;

entity add4 is
	generic(prop_delay: time:= 5 ns);
	port(input: in dlx_word;
		clock: in bit;
		output: out dlx_word);
end entity add4;

architecture behavior of add4 is
begin
	process(input, clock) is
	variable newpcplus: dlx_word;
	variable error: boolean;
	begin
		if clock 'event and clock = '1' then
			bv_addu(input,
				"00000000000000000000000000000100",
				newpcplus,
				error);
				output <= newpcplus after prop_delay;
		end if;
	end process;
end architecture;
