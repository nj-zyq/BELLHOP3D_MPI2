export FC=mpiifort

export FFLAGS= -O3 -inline-level=2 -assume byterecl  -heap-arrays

# ______________________________________________________________________________

export RM=rm
export FFLAGS+= -I../misc 

export LAPACK_LIBS = -llapack

all:
	(cd misc;	make -k all)
	(cd Bellhop;	make -k all)
	@echo " "
	@echo "***********************************"
	@echo "***** Acoustics Toolbox built *****"
	@echo "***********************************"


clean:
	-rm -f bin/*.exe 
	-rm *.out
	find . -name '*.dSYM' -exec rm -r {} +
	find . -name '*.png'  -exec rm -r {} +
	find . -name '*.eps'  -exec rm -r {} +
	find . -name '*.mod'  -exec rm -r {} +
	find . -name '*.grn'  -exec rm -r {} +
	find . -name '*.shd'  -exec rm -r {} +
	find . -name '*.shd.mat'  -exec rm -r {} +
	find . -name '*.prt'  -exec rm -r {} +
	(cd misc;	make -k -i clean)
	(cd Bellhop;	make -k -i clean)

cleanlsf:
	-rm -f *.out *.err
	-rm my/*.shd my/*.prt my/*.exe
