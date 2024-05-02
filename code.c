lex 4b.l
yacc -d yacc.y
ls
gcc lex.yy.c y.tab.c -ll
./a.out
