# makefile to build dtb
DTS_FILES=$(wildcard *.dts)
DTB_FILES=$(DTS_FILES:%.dts=%.dtb)

.PHONY: all
all: $(DTB_FILES)

%.dtb: %.dts *.dtsi
	dtc -p 4096 -I dts -O dtb -o $@ $<
clean:
	rm $(DTB_FILES) 
