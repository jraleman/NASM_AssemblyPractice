# NASM_AssemblyPractice

...

## Setup

Depending on your system, follow the steps below:

### Mac OS X

Make sure you have `nasm` installed, and follow the next steps.

#### Compile

```
nasm -f macho64 asm/{file}.s
```

#### Link

Depending on the file, you might need to run one of the following:

```
ld -arch x86_64 -macosx_version_min 10.9.0 -no_pie -lSystem -e _start -o a.out asm/{file}.o
```

If there is a main label, remove the `-e _start` flag:

```
ld -arch x86_64 -macosx_version_min 10.9.0 -no_pie -lSystem -o a.out asm/{file}.o
```

And if you wish to mix `c` and `s`, you can run the following:

```
gcc c/{file}.c asm/{file}.s
```

#### Execute

And just execute with:

```
./a.out
```

### Linux

- See [Hackintosh](https://hackintosh.com/)
- Follow Mac OS X setup steps

### Windows

- See Linux

## Sauce

- [NASM Tutorial](http://cs.lmu.edu/~ray/notes/nasmtutorial/)
- [Assembly Programming Tutorial](https://www.tutorialspoint.com/assembly_programming/index.htm)
