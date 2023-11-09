# dr-quine

A quine is a computer program which produces a copy of its own source code. The objective of this project is to self-replicate a code with three different programs coded in different languages.

## Colleen

Prints its source code in the standard output.

## Grace

Creates a file called `Grace_kid.[extension]` with the same code as the original `Grace.[extension]`

## Sully

When executed the program writes in a file named Sully_X.c/Sully_X.s. The X will be an interger given in the source. Once the file is created, the program compiles this file and then runs the new program (which will have the name of its source file).

An integer is therefore present in the source of your program and will have to evolve by decrementing every time you create a source file from the execution of the program.

### Resources
  - https://en.wikipedia.org/wiki/Kleene%27s_recursion_theorem#Application_to_quines
  - https://en.wikipedia.org/wiki/Quine_(computing)
  - https://github.com/PotatoesMaster/c-quine
