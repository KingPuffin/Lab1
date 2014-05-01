#Lab1
====

##VGA Driver
Using VHDL to drive a test screen to using an HDMI to VGA cable. The VHDL code uses a top level module that instantiates other modules. 

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
			state <= idle;
		elsif(rising_edge(clk)) then
			state <= state_next;
		end if;
	end process;
```

- H_sync diagram
![alt text](H_Sync.PNG "H Sync")

- V_sync diagram
![alt text](V_Sync.PNG "V Sync")

# `atlys_lab_video`
The top level module. This instantias vga_sync and pixel_gen.

# `vga_sync`
This connects v_sync and h_sync. It instantiates both of them

# `v_sync_gen`
This generates the vertical signals

# `h_sync_gen`
This generates the horizontal signals

# `v_sync`
This generates the vertical signals

# `pixel_gen`
This assigns RGB to different values to display different colors

