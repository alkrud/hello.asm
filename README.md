# Description

### Simple "hello world" program written in Linux x86_64 assembly

# Requirements

### [GNU Binutils](https://www.gnu.org/software/binutils)
### [NASM](https://www.nasm.us)

# How to build and run

### First clone the repo

```
git clone https://github.com/alkrud/hello.asm.git
```

### Run the necessary commands

```
cd hello.asm
nasm -f elf64 -o hello.o hello.asm
ld -o hello hello.o
./hello
```

# Reference

### [Introduction to Assembly](https://github.com/0xAX/asm/blob/master/content/asm_1.md)
