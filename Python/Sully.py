import os
import sys
quine = 'import os\nimport sys\nquine = %r\nn = %d\nif (n > 0):\n    if len(sys.argv) > 1: n -= 1\n    with open("Sully_%%d.py" %% n, "w") as f:\n        f.write(quine %% (quine, n))\n        f.close()\n    os.system("python3 Sully_%%d.py X" %% n)\n'
n = 5
if (n > 0):
    if len(sys.argv) > 1: n -= 1
    with open("Sully_%d.py" % n, "w") as f:
        f.write(quine % (quine, n))
        f.close()
    os.system("python3 Sully_%d.py X" % n)
