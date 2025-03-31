$! CREATE_FILES.COM
$! This script creates 15000 files with unique names including the count in the filename
$ COUNT = 1
$ LOOP:
$     FILE_NAME = "FILE_" + F$STRING(COUNT) + ".TXT"
$     OPEN/WRITE OUTFILE 'FILE_NAME'
$     WRITE OUTFILE "This is file number ''COUNT'."
$     CLOSE OUTFILE
$     COUNT = COUNT + 1
$     IF COUNT .LE. 15000 THEN GOTO LOOP
$ EXIT

