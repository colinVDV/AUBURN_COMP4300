use work.bv_arithmetic.all;
use work.dlx_types.all;

entity regfile is
	generic( prop_delay: Time := 5 ns);
	port (
		read_notwrite, clock 	: in bit;
		regA,rebB		: in register_index;
		data_in			: in dlx_word;
		dataA_out,dataB_out	: out dlx_word
	);
end entity regfile;


architecture behavior of regfile is
	type arr is array (0 to 31) of dlx_word;
	signal arr2 : arr;

begin
	reg: process(read_notwrite, clock, regA, rebB, data_in) is
	begin
		if (clock = '1') then
			if (read_notwrite = '1') then
				dataA_out <= arr2(bv_to_integer(regA)) after prop_delay;
				dataB_out <= arr2(bv_to_integer(rebB)) after prop_delay;
			else
				arr2(bv_to_integer(regA)) <= data_in after prop_delay;
			end if;
		end if;
	end process reg;
end architecture behavior;
