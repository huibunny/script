:: full sync
:: rsync.exe -vzrtopg --progress  --delete alice@user02.debian::wiki /cygdrive/d/sync/data/backup/mediawiki-1.28.0  --password-file=/cygdrive/d/sync/task/windows/rsync.pass

:: incremental sync
rsync.exe -vzrtopg --progress  --delete-before alice@user02.debian::wiki /cygdrive/d/sync/data/backup/mediawiki-1.28.0  --password-file=/cygdrive/d/sync/task/windows/rsync.pass