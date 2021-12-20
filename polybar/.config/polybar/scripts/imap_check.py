#!/usr/bin/env python
import imaplib
import keyring

IMAPSERVER = keyring.get_password('polybar.imap', 'server')
USER = keyring.get_password('polybar.imap', 'username')
PASSWORD = keyring.get_password('polybar.imap', 'password')

try:
    con = imaplib.IMAP4_SSL(IMAPSERVER)
    con.login(USER, PASSWORD)

    con.select(readonly=True)
    status, messages = con.search(None, 'UnSeen')
    count = len(messages[0].decode('utf-8').split(' '))
except:
    count = 0

print(count)
