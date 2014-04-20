harddub
=======

NTFS-hardlink based backup tool

harddub creates entire copy of source using simple rules:
full dir structure is created
newer (and older) files are copied
other files are hardlinked (NTFS NEEDED!) to last Dubase
missing files are skipped.

Being hardlinked, each dub becomes autonome and consumes only ammount
of disk neccesery for new files.
Each dub can be readed or deleted without any influence to the other dubs.

harddub is ready for compiling with freewrap
