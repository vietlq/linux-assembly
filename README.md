# Assembly Programming for x86-64 Linux

## Tutorials

* Basic NASM tutorial: https://cs.lmu.edu/~ray/notes/nasmtutorial/

## Books

* Assembly Language Step-by-Step Third Edition by Jeff Duntemann: https://www.amazon.co.uk/Assembly-Language-Step-Step-Third/dp/0470497025/

## Caveats

* Use `syscall` instead of legacy `int 80H` on x86-32: https://stackoverflow.com/questions/12806584/what-is-better-int-0x80-or-syscall
* Registers for syscall have changed in x86-64: [https://blog.rchapman.org/posts/Linux_System_Call_Table_for_x86_64/](https://blog.rchapman.org/posts/Linux_System_Call_Table_for_x86_64/)
* Use latest syscall references: https://filippo.io/linux-syscall-table/
* If you must use Assembly on 32-bit Linux, see `eatsyscall` example and https://stackoverflow.com/a/4253672/128028 to create emulated 32-bit binary
