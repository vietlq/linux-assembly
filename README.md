# Assembly Programming for x86-64 Linux

## Tutorials

* Basic NASM tutorial: https://cs.lmu.edu/~ray/notes/nasmtutorial/

## Books

* Assembly Language Step-by-Step Third Edition by Jeff Duntemann: https://www.amazon.co.uk/Assembly-Language-Step-Step-Third/dp/0470497025/

## Debugging

### Using GDB

#### Bare-bone debugging

* Run `gdb path_to_my_asm`
* Run `break _start` as the first thing. Note that in C/C++ you use `break main` but actually ELF has `_start` as the entry point
* Type `run` and the breakpoint will be at `_start`
* To step through each instruction, run `si` intead of `s` like in C/C++
* Read: https://sourceware.org/gdb/onlinedocs/gdb/Registers.html
* Run `layout src` to show window with source code (C, C++)
* To show assembly of the next line:

```
# From https://stackoverflow.com/a/29953542/128028
set  disassemble-next-line on
show disassemble-next-line
```

#### Debugging with vibrant TUI

* Start debugging session with: `gdb -tui path_to_my_asm`
* Run `break _start` as usual
* Run `layout asm` before or after executing `run`
* Run `layout reg` after executing `run`
* To step through each instruction, run `si` intead of `s` like in C/C++
* For better UI, look at https://github.com/cyrus-and/gdb-dashboard

```
# From https://stackoverflow.com/a/55935724/128028
dashboard -layout source assembly registers stack
```

For more info, read:

* http://dbp-consulting.com/tutorials/debugging/basicAsmDebuggingGDB.html
* https://www-users.cs.umn.edu/~kauffman/2021/gdb
* https://www-zeuthen.desy.de/unix/unixguide/infohtml/gdb/TUI-Commands.html
* https://ftp.gnu.org/old-gnu/Manuals/gdb/html%5Fchapter/gdb%5F19.html

## Caveats

* Use `syscall` instead of legacy `int 80H` on x86-32: https://stackoverflow.com/questions/12806584/what-is-better-int-0x80-or-syscall
* Registers for syscall have changed in x86-64: [https://blog.rchapman.org/posts/Linux%5FSystem%5FCall%5FTable%5Ffor%5Fx86%5F64/](https://blog.rchapman.org/posts/Linux_System_Call_Table_for_x86_64/)
* Use latest syscall references: https://filippo.io/linux-syscall-table/
* If you must use Assembly on 32-bit Linux, see `eatsyscall` example and https://stackoverflow.com/a/4253672/128028 to create emulated 32-bit binary
