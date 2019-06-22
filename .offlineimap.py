from subprocess import check_output

def pass_store(key):
    return check_output(["pass", "show", key]).strip()

def gmail_nametrans(foldername):
    return {
        '[Gmail]/Sent Mail': 'sent',
        '[Gmail]/All Mail': 'archive',
        '[Gmail]/Drafts': 'drafts',
    }.get(foldername, foldername)

def gmail_folderfilter(foldername):
    return foldername in [
        'INBOX',
        '[Gmail]/All Mail',
        '[Gmail]/Sent Mail',
        '[Gmail]/Drafts',
    ]
