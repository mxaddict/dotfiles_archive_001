# Load our password from encrypted file
source "gpg -d ~/.mutt/passwords/$MUTT_ACCOUNT.gpg |"

# Load GMAIL configs
source ~/.mutt/accounts/gmail.com 
