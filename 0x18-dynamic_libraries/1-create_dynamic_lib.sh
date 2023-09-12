#!/bin/bash

# line to Compile all .c files into object files
gcc -c -fPIC *.c

# It Creates the dynamic library
gcc -shared -o liball.so *.o

# Clean up the temporary object files
rm *.o

# Print the message without using printf or puts
echo -e "\nDynamic library liball.so created."
