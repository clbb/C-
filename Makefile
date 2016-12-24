FIR=main.c
FIR_O=main
SEC=a.h
THD=b.h
FOR=c.h
#$(FIR):$(FIR_O)
#	gcc -I $(SEC) $(THD) $(FOR) $(FIR) -o $(FIR_O)
#main.o:main.c a.h b.h c.h
#	gcc a.h b.h c.h main.c -o main.o
main:main.o
	gcc -o main main.o
main.o:main.c a.h b.h c.h
	gcc -c main.c
.PHONY:clean
clean:
	rm -rf main.o

