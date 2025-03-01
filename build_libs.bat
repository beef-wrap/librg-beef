mkdir libs

copy librg\code\librg.h librg\code\librg.c

clang -c -g -gcodeview -o librgd.lib -target x86_64-pc-windows -fuse-ld=llvm-lib -Wall -DLIBRG_IMPL librg\code\librg.c
move librgd.lib libs

clang -c -O3 -o librg.lib -target x86_64-pc-windows -fuse-ld=llvm-lib -Wall -DLIBRG_IMPL librg\code\librg.c
move librg.lib libs
