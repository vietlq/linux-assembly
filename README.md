# Assembly Programming for x86-64 Linux

## Caveats

* Use `syscall` instead of legacy `int 80H` on x86-32: https://stackoverflow.com/questions/12806584/what-is-better-int-0x80-or-syscall
* Registers for syscall have changed in x86-64: [https://blog.rchapman.org/posts/Linux_System_Call_Table_for_x86_64/](https://blog.rchapman.org/posts/Linux_System_Call_Table_for_x86_64/)
* Use latest syscall references: https://filippo.io/linux-syscall-table/
