# x2Ident_ide
Simply develop and test the login tool x2Ident.

## Usage
`dump_export.sh` creates a database dump of the database for installation. (includes only structure and language data)

`sync.sh` synchronizes the sub repositories of x2Ident with the main repository

`push.sh "commit message"` pushes a commit with a specified message to main/master and executes `sync.sh`
