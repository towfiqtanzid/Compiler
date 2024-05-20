main:
	flex cal.l
	gcc lex.yy.c
	./a

main2:
	bison -d cal.y
	flex cal.l
	gcc lex.yy.c cal.tab.c
	./a <input.txt> output.txt