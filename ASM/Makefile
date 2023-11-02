COLLEEN_SRCS = Colleen.s
COLLEEN_OBJS = $(COLLEEN_SRCS:.s=.o)

GRACE_SRCS = Grace.s
GRACE_OBJS = $(GRACE_SRCS:.s=.o)

SULLY_SRCS = Sully.s
SULLY_OBJS = $(SULLY_SRCS:.s=.o)

%.o: %.s
	nasm -f macho64 $< -o $@

all: colleen grace sully

colleen: $(COLLEEN_OBJS)
	gcc -m64 -lc -Wl  $(COLLEEN_OBJS) -o Colleen

grace: $(GRACE_OBJS)
	gcc -m64 -lc -Wl  $(GRACE_OBJS) -o Grace

sully: $(SULLY_OBJS)
	gcc -m64 -lc -Wl  $(SULLY_OBJS) -o Sully

test: all
	./Grace
	diff Grace.s Grace_kid.s

clean:
	rm -f $(COLLEEN_OBJS) $(GRACE_OBJS) $(SULLY_OBJS)
	rm -f Grace_*.s
	rm -f Sully_*

fclean: clean
	rm -f Colleen Grace Sully

re: fclean all
