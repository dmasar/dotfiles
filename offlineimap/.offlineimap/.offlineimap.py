#! /usr/bin/env python2

import locale
from subprocess import Popen, PIPE

encoding = locale.getdefaultlocale()[1]

def get_password(p):
    (out, err) = Popen(["gnome-keyring-query", "get", p], stdout=PIPE).communicate()
    return out.decode(encoding).strip()
