# Comment
FILE = "Grace_kid.py"
QUINE = '# Comment\nFILE = "Grace_kid.py"\nQUINE = %r\nMAIN = lambda x: x.write(QUINE %% QUINE)\n\nMAIN(open(FILE, "w"))'
MAIN = lambda x: x.write(QUINE % QUINE)

MAIN(open(FILE, "w"))