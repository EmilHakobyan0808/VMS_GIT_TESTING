$! CREATE_FILES.COM
$! This script creates 5000 files with unique names including the count in the filename
$ COUNT = 1
$ LOOP:
$     FILE_NAME = "FILE_" + F$STRING(COUNT) + ".TXT"
$     OPEN/WRITE OUTFILE 'FILE_NAME'
$     WRITE OUTFILE "This is file number ''COUNT'."
$     CLOSE OUTFILE
$     COUNT = COUNT + 1
$     IF COUNT .LE. 5000 THEN GOTO LOOP
$ EXIT

