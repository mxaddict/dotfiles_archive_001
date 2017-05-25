# Gmail Defaults
set from      = $MUTT_ACCOUNT
set imap_user = $MUTT_ACCOUNT
set imap_pass = $my_MUTT_PASSWORD
set smtp_pass = $my_MUTT_PASSWORD
set smtp_url  = "smtp://$MUTT_ACCOUNT@smtp.gmail.com:587/"
set folder    = "imaps://imap.gmail.com:993"
set spoolfile = "+INBOX"
set postponed = "+[Gmail]/Drafts"
