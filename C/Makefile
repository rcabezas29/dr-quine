COLLEEN_SRCS = Colleen.c
COLLEEN_OBJS = $(COLLEEN_SRCS:.c=.o)

GRACE_SRCS = Grace.c
GRACE_OBJS = $(GRACE_SRCS:.c=.o)

SULLY_SRCS = Sully.c
SULLY_OBJS = $(SULLY_SRCS:.c=.o)

CC = gcc
CFLAGS = -Wall -Werror -Wextra

all: colleen grace sully

colleen: $(COLLEEN_OBJS)
	$(CC) $(CFLAGS) $(COLLEEN_OBJS) -o Colleen

grace: $(GRACE_OBJS)
	$(CC) $(CFLAGS) $(GRACE_OBJS) -o Grace

sully: $(SULLY_OBJS)
	$(CC) $(CFLAGS) $(SULLY_OBJS) -o Sully

test: all
	./Grace
	diff Grace.c Grace_kid.c

clean:
	rm -f $(COLLEEN_OBJS) $(GRACE_OBJS) $(SULLY_OBJS)
	rm -f Grace_*.s
	rm -f Sully_*

fclean: clean
	rm -f Colleen Grace Sully

re: fclean all
