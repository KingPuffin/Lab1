#Lab1
====

##VGA Driver
Using VHDL to drive a test screen to using an HDMI to VGA cable

#Implementation

- Block Diagram for the Lab
![alt text](Block_Diagram.png "Block Diagram")

- This lab used D flip flops for states (current and next) as well as for the buffers.
  - Example of a Flip Flop in VHDL
``` VHDL
-- state register
	process(clk, reset)
	begin
		if (reset = '1') then
			state_reg <= idle;
		elsif (clk'event and clk = '1') then
			state_reg <= state_next;
		end if;
	end process;
```

- H_sync diagram
![alt text](H_Sync.PNG "H Sync")

- V_sync diagram
![alt text](V_Sync.PNG "V Sync")

# `vga_sync`
This connects v_sync and h_sync
# `v_sync_gen`
# `h_sync_gen`
This generates the horizontal signals
# `v_sync`
This generates the vertical signals
# `pixel_gen`
This assigns RGB to different values to display different colors

