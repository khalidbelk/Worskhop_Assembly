# Assembly x86-64 Workshop

Welcome! In this workshop, you'll receive an introduction to Assembly x86_64

## Requirements

**Basic Requirements**: x86_64 Processor & GCC (assuming you already have them (I hope) if you're here, so we'll skip that part).

You should also have **NASM** installed in order to compile .asm files, although the **compile.sh** script will handle the compilation for you :) 


Here are the commands to install NASM if you haven't already ⬇️.

For **Ubuntu** users : ```sudo apt-get install nasm```

For **Fedora** users : ```sudo dnf install nasm```

## Format 
**Very Important:**
To avoid compilation errors when running the scripts and get the expected behavior, you should follow this format when naming your files:

For your **C** files: **test_functionname.c (e.g. : test_strlen.c)**

For your **ASM** files: **functionname.asm (e.g. : strlen.asm)** 

## Usage

```
./compile
```
```
./testmycfile
OPTIONS
         clean : removes .o .so files and the function's executables
```

Well done! Now you should have the executables for your functions. All you need to do is run them **(e.g., ./strlen)** and see if the real C function returns the same result as your ASM function.


## FAQ

**What is the purpose of the "compile" executable?**

The **compile** executable, as the name suggests, compiles the .asm files using NASM, so you don't have to worry about doing it manually or each time you want to recompile. The resulting .o files will help you test your ASM functions with your C files (this step will be handled by the other script, so don't worry! :)

**What is the purpose of the "testmycfile" executable?**

As mentioned earlier, the .o files will allow us to test the ASM functions with our C files, to make sure that our .asm program works correctly and returns the expected results. Normally, you would have to manually compile your C file with the .o but the **testmycfile** script already does it for you (and for all the files simultaneously as long as you follow the **right format naming your files**).
