" call minpac#add('guyzmo/notmuch-abook')
call minpac#add('tjaartvdwalt/nvim-notmuch')

let g:notmuch_folders = [
                \ [ 'new', 'tag:inbox and tag:unread' ],
                \ [ 'unified inbox', 'tag:inbox' ],
                \ [ 'unread', 'tag:unread' ],
                \ [ 'all', '*' ],
                \ [ 'tjaart@tjaart.org', 'tag:inbox and (to:tjaart.org or to:tjaart.co.za)' ],
                \ [ 'tajvdw@gmail.com', 'tag:inbox and to:tajvdw@gmail.com' ],
                \ [ 'tvanderwalt@westmont.edu', 'tag:inbox and to:tvanderwalt@westmont.edu' ],
                \ [ 'tjaart@outsideopen.com', 'tag:inbox and (to:tjaart@outsideopen.com or tvanderwalt@outsideopen.com)' ],
                \ ]

let g:notmuch_date_format = '%Y-%m-%d'
let g:notmuch_datetime_format = '%Y-%m-%d %H:%M:%S'

let g:notmuch_sendmail = 'gmi send -t -C ~/.mail/tjaart@tjaart.org'
