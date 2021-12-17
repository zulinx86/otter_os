.PHONY: img
img:
	make -r os.img

os.img: ipl.s
	nasm -f bin -o os.img ipl.s

.PHONY: run
run:
	make -r img
	qemu-system-i386 -drive file=os.img,if=floppy,format=raw -boot a

.PHONY: clean
clean:
	rm os.img

