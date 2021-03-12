
.DEFAULT_GOAL := prepare

prepare: 
	mkdir -p ./src
	@echo "Preparing flex"
	flex -o ./src/little_duck.lex.yy.c little_duck.l
	@echo "Preparing bison"
	bison -o ./src/little_duck.tab.c -dy little_duck.yy
	@echo "Compiling"
	g++ ./src/little_duck.lex.yy.c ./src/little_duck.tab.c -lfl -o compiler.out

clean:
	@echo "Cleaning"
	rm -rf ./src
	rm ./compiler.out

test:
	@echo "Testing successful files"
	./compiler.out ../tests/test1.duck
	./compiler.out ../tests/test2.duck
	./compiler.out ../tests/test5.duck