# Assembly x86-64 Workshop

Welcome here ! Through this Workshop you'll have an introduction to Assembly x86_64 

## Requirements

**Basic Requirements** : x86_64 Processor & GCC (you have them (I hope) if you're here, so we'll skip that part)

You should have **NASM** installed as well to be able to compile .asm files, even though the **compile.sh** script will compile them for you :) 


Here are the commands to install NASM if you don't have it yet ⬇️.

**Ubuntu** users : ```sudo apt-get install nasm```

**Fedora** users : ```sudo dnf install nasm```

## Format 
**Very Important:**
If you want to avoid compilation errors when running the scripts and get the expected behaviour, you should  follow this format when naming your files:

For your **C** files : **test_functionname.c (e.g. : test_strlen.c)**

For your **ASM** files : **functionname.asm (e.g. : strlen.asm)** 

## Usage

```
./compile
```
```
./testmycfile
OPTIONS
         clean : removes .o .so files and the functions executables
```
Well done ! Now you should have your function's executables, all you have to do is run them **(ex: ./strlen)** and see if the real C function returns the same thing as your ASM function.




## FAQ

**What is the "compile" executable used for?**

The **compile** executable, as its name says, will compile the .asm files with NASM so you won't have to worry about doing that manually / every time you want to recompile. The .o files created will help you test your ASM functions with your C files (that step will be done with the other script, don't worry :) ! )

**What is the "testmycfile" executable used for?**

As you've read earlier, the .o files will allow us to test the asm functions with our C file (so we can see if our .asm program really works, if it returns what's expected...etc). Well usually you'd have to manually compile your C file with the .o but the script already does it for you (and for all the files simultaneously as long as you follow the right format naming your files).

