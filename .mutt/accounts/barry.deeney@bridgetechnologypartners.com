# Load our password from encrypted file
source "gpg -d ~/.mutt/passwords/$MUTT_ACCOUNT.gpg |"

# Setup mail settings
set from      = $MUTT_ACCOUNT
set imap_user = $MUTT_ACCOUNT
set imap_pass = $my_MUTT_PASSWORD
set smtp_pass = $my_MUTT_PASSWORD
set smtp_url  = "smtp://$MUTT_ACCOUNT@secure.emailsrvr.com:587/"
set folder    = "imaps://secure.emailsrvr.com:993"
set spoolfile = "+INBOX"
set postponed = "+Drafts"
