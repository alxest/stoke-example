rm -f *.o
rm -f *.s

OPT="-O3"

echo "-------------------------------------"
echo "gcc"
gcc $OPT -g -c main.c -S -o main.gcc.s
gcc $OPT -g -c my_wcpcpy.c -S -o my_wcpcpy.gcc.s
gcc main.gcc.s my_wcpcpy.gcc.s -o whole.gcc.o
time ./whole.gcc.o


echo "-------------------------------------"
echo "gcc + google"
gcc main.gcc.s my_wcpcpy.google.s -o whole.hand-gcc.o
time ./whole.hand-gcc.o


echo "-------------------------------------"
echo "gcc + stoke"
gcc main.gcc.s my_wcpcpy.stoke.s -o whole.hand-gcc.o
time ./whole.hand-gcc.o
