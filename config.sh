tar -xzvf fftw-3.3.8.tar.gz
cd ./fftw-3.3.8/
mkdir build
./configure --prefix=/content/QXMD-CYBER-MAGICS-2023JUNE/fftw-3.3.8/build CC=gcc CFLAGS=-O3 MPICC=mpicc F77=mpif77 F90=mpif90 FFLAGS=-O3 --enable-shared=yes --enable-sse2 --enable-avx --enable-avx2 --disable-avx512 --disable-avx-128-fma --disable-kcvi --disable-altivec --disable-vsx --disable-neon --disable-generic-simd128 --disable-generic-simd256 --disable-fma --enable-static=yes --enable-mpi --enable-openmp --enable-threads
make -j 8
make install
cd ../QXMD/
make qxmd
