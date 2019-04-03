tb: tb.v sendShift.v
	iverilog -o tb tb.v sendShift.v
	vvp -n tb -lxt2
clean:
	rm -rf tb tb.lxt
