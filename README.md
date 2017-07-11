# ostrich-matlab-environment

To regenerate the mex files for matlab, use the 'mex' utility and put the compiled libraries
in the folder corresponding to your platform.

Ex:
    
    mex createMatrixRand.c
    mex createMatrixRandJS.c
    mex createRandomPageMatrices.c

If mex fails for whatever reason you may try to compile directly with clang:

    clang -DMATLAB_MEX_FILE -I$MATLAB_ROOT/extern/include -O2 $FILE.c -bundle -Wl,-exported_symbols_list,$MATLAB_ROOT/extern/lib/maci64/mexFunction.map -lmx -lmex -lmat -lc++ -L$MATLAB_ROOT/bin/maci64 -bundle -o $FILE.mexmaci64
