include ./arch


OBJ	= nqueens.o
OBJ1	= nqueens-2.o
OBJ2	= nqueens-p1.o
OBJ3	= nqueens-p2.o
OBJ4	= nqueens-p3.o


LDLIBS =

CFLAGS = -g 

all: serial serial_2 parallel_1 parallel_2 parallel_3

serial:	        $(OBJ)
		$(CC) $(LDFLAGS) -o $@ $(OBJ)  $(LDLIBS)

serial_2:	        $(OBJ1)
		$(CC) $(LDFLAGS) -o $@ $(OBJ1)  $(LDLIBS)

parallel_1:	        $(OBJ2)
		$(CC) $(LDFLAGS) -o $@ $(OBJ2)  $(LDLIBS)

parallel_2:	        $(OBJ3)
		$(CC) $(LDFLAGS) -o $@ $(OBJ3)  $(LDLIBS)

parallel_3:	        $(OBJ4)
		$(CC) $(LDFLAGS) -o $@ $(OBJ4)  $(LDLIBS)

clean:	
	$(RM) *.o serial serial_2 parallel_3 parallel_2 parallel_1 *~;
	$(RM) core;
	$(RM) PI*;
