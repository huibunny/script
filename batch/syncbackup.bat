:: full sync
:: rsync.exe -varlopg --progress  --delete /cygdrive/e/vmware/centos6.5_64.bk01 alice@ubuntu.bk::vmware


:: inremental sync
rsync -varlopg --progress --log-file=/cygdrive/d/sync/task/windows/backup.log  --delete-before /cygdrive/e/vmware/centos6.5_64.bk01 alice@ubuntu.bk::vmware --password-file=/cygdrive/d/sync/task/windows/rsync.pass

rsync -varlopg --progress --log-file=/cygdrive/d/sync/task/windows/backup.log  --delete-before /cygdrive/e/vmware/centos6.5_64.bk02 alice@ubuntu.bk::vmware --password-file=/cygdrive/d/sync/task/windows/rsync.pass

:: rsync -varlopg --progress --log-file=/cygdrive/d/sync/task/windows/backup.log  --delete-before /cygdrive/e/vmware/centos6.5_64.book alice@ubuntu.bk::vmware --password-file=/cygdrive/d/sync/task/windows/rsync.pass

:: rsync -varlopg --progress --log-file=/cygdrive/d/sync/task/windows/backup.log  --delete-before /cygdrive/e/vmware/centos6.5_64.book02 alice@ubuntu.bk::vmware --password-file=/cygdrive/d/sync/task/windows/rsync.pass

:: rsync -varlopg --progress --log-file=/cygdrive/d/sync/task/windows/backup.log  --delete-before /cygdrive/e/vmware/centos6.5_64.wx01 alice@ubuntu.bk::vmware --password-file=/cygdrive/d/sync/task/windows/rsync.pass

rsync -varlopg --progress --log-file=/cygdrive/d/sync/task/windows/backup.log  --delete-before /cygdrive/e/vmware/debian9_64 alice@ubuntu.bk::vmware --password-file=/cygdrive/d/sync/task/windows/rsync.pass

rsync.exe -vzrtopg --progress  --delete-before alice@user02.debian::wiki /cygdrive/d/sync/data/backup/mediawiki-1.28.0  --password-file=/cygdrive/d/sync/task/windows/rsync.pass