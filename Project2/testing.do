force -freeze sim:/alu/operand1 32'h00000001 0
force -freeze sim:/alu/operand2 32'h00000001 0
run 100ns

force -freeze sim:/alu/signed 1 0
run 100ns

force -freeze sim:/alu/operand2 32'h00000003 0
run 100ns

force -freeze sim:/alu/operation 4'h1 0
force -freeze sim:/alu/operand1 32'h00000005 0
run 100ns

force -freeze sim:/alu/signed 0 0
run 100ns

force -freeze sim:/alu/operation 4'h2 0
force -freeze sim:/alu/operand1 32'h00000001 0
force -freeze sim:/alu/operand2 32'h00000001 0
run 100ns

force -freeze sim:/alu/operand1 32'h00000000 0
run 100ns


force -freeze sim:/alu/operation 4'h3 0
run 100ns

force -freeze sim:/alu/operand2 32'h00000001 0
run 100ns



force -freeze sim:/alu/operation 4'h4 0
run 100ns

force -freeze sim:/alu/operation 4'h5 0
run 100ns

force -freeze sim:/alu/operation 4'h6 0
run 100ns

force -freeze sim:/alu/operation 4'h7 0
run 100ns

force -freeze sim:/alu/operation 4'h8 0
run 100ns

force -freeze sim:/alu/operation 4'h9 0
run 100ns

force -freeze sim:/alu/operation 4'ha 0
run 100ns

force -freeze sim:/alu/operation 4'hb 0
run 100ns


force -freeze sim:/alu/operation 4'hc 0
run 100ns


force -freeze sim:/alu/operation 4'hd 0
run 100ns


force -freeze sim:/alu/operation 4'he 0
force -freeze sim:/alu/operand1 32'h00000005 0
force -freeze sim:/alu/operand2 32'h00000006 0
run 100ns

force -freeze sim:/alu/operand1 32'h00010005 0
force -freeze sim:/alu/operand2 32'h00020006 0
run 100ns

force -freeze sim:/alu/operand1 32'h00000005 0
force -freeze sim:/alu/operand2 32'h00000006 0
force -freeze sim:/alu/signed 1 0
run 100ns