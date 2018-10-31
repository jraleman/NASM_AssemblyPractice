# NASM_AssemblyPractice

...

## Usage

### Mac OS X


```
nasm -f macho64 asm/{file}.s
ld -arch x86_64 -macosx_version_min 10.9.0 -no_pie -lSystem -e _start -o a.out asm/{file}.o
./a.out
```

### Linux

- See [Hackintosh](https://hackintosh.com/)

## Sauce

- http://cs.lmu.edu/~ray/notes/nasmtutorial/
- https://www.tutorialspoint.com/assembly_programming/index.htm
