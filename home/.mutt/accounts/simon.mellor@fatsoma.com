set imap_user = "simon.mellor@fatsoma.com"

set smtp_url = "smtp://simon.mellor@fatsoma.com@smtp.gmail.com:587/"
set from = "simon.mellor@fatsoma.com"
set realname = "Simon Mellor"

set folder = "imaps://imap.gmail.com:993"
set spoolfile = "+INBOX"
set postponed="+[Gmail]/Drafts"

set certificate_file=~/.mutt/certificates

set move = no

source ~/.mutt/colors/mutt-colors-solarized-dark-16.muttrc
