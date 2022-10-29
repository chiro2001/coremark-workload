RISCV_OBJDUMP ?= riscv64-unknown-elf-objdump

dump: overlay/coremark.bare.riscv.dump

overlay/coremark.bare.riscv: clean
	./build.sh

overlay/coremark.bare.riscv.dump: overlay/coremark.bare.riscv
	$(RISCV_OBJDUMP) -D $^ > $@

clean:
	-rm -rf overlay/coremark.*

.PHONY: clean all