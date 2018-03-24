# Install Mutt
sudo apt-get install mutt
touch .muttrc
mkdir -p .mutt/cache

# Add gmail
set from = "iwxfer@gmail.com"
set realname = "Tu nombre"
set imap_user = "tuemail@gmail.com"
set imap_pass = "password"
 
set folder = "imaps://imap.gmail.com:993"
set spoolfile = "+INBOX"
set postponed ="+[Gmail]/Drafts"
set header_cache =~/.mutt/cache/headers
set message_cachedir =~/.mutt/cache/bodies
set certificate_file =~/.mutt/certificates
 
set move=no 
set include=yes # include received message when resply
set reply_to=yes
set pager_index_lines=6
 
set smtp_url = "smtp://iwxfer@smtp.gmail.com:587/"
set smtp_pass = "password"