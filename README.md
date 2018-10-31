# NASM_AssemblyPractice

...

## Usage (MacOSX Only)

```
nasm -f macho64 asm/lesson*.s
ld --arch x86_64 -macosx_version_min 10.9.0 -lSystem -o a.out asm/lesson*.o
./a.out
```

## TODO

...

### Define

- `Sections`
  - `.data`
  - `.text`
- `global`
- `db`
- `mov`
- Registers
  - `eax`
  - `ebx`
  - `ecx`
  - `edx`
- `int`
- `80h, 0Ah`... things that end with 'h' are special chars?

## Sauce

- http://cs.lmu.edu/~ray/notes/nasmtutorial/
