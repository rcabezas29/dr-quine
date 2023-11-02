# Comment outside function
def quine():
    s = '# Comment outside function\ndef quine():\n    s = %r\n    print(s %% s)\n\ndef main():\n    # Comment inside main function\n    quine()\n\nmain()\n'
    print(s % s)

def main():
    # Comment inside main function
    quine()

main()
