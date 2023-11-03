import os
quine = 'import os\nquine = %r\nn = %d\nif (n >= 0):\n    with open("Sully_%%d.py" %% n, "w") as f:\n        f.write(quine %% (quine, n - 1))\n        f.close()\n    os.system("python3 Sully_%%d.py" %% n)\n'
n = 5
if (n >= 0):
    with open("Sully_%d.py" % n, "w") as f:
        f.write(quine % (quine, n - 1))
        f.close()
    os.system("python3 Sully_%d.py" % n)
