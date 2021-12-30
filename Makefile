BOF := FindProcHandle
BOF2 := FindModule
CC_x64 := x86_64-w64-mingw32-gcc

all:
	$(CC_x64) -o ./compiled/find-proc-handle/$(BOF).o -c $(BOF).c -masm=intel
	$(CC_x64) -o ./compiled/find-module/$(BOF2).o -c $(BOF2).c -masm=intel

clean:
	rm -f ./compiled/find-proc-handle/$(BOF).o
	fm -f ./compiled/find-module/$(BOF2).o
