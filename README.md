# NASM_AssemblyPractice

...

## Try

...

### Mac OS X

```
nasm -f macho64 ${path-to-asm-file}
ld -macosx_version_min 10.7.0 -lSystem -o ${bin} ${obj}
./${bin}
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

- https://stackoverflow.com/questions/1817577/what-does-int-0x80-mean-in-assembly-code
