## Goals

* Learn how to commit changes to the repository

## Commit the change

Ok, enough about staging.  Let's commit what we have staged to the
repository.

When you used `git commit` previously to commit the initial version
of the `hello.py` file to the repository, you included the `-m` flag
that gave a comment on the command line.  If you omit the `-m` flag
from the command line, `git` will pop you into the editor.

`git commit`{{execute}}

Any line starting with a `#` is a comment and will **NOT** be part
of the commit message.

On the first line, enter the comment:

`Get name from user.`{{copy}}

To save the file, press control-x, and then hit `y` to save your changes.
**DO NOT** change the name of the file (it will be something like
  `/root/hello/.git/COMMIT_EDITMS`).  Just hit return.


The output will indicate that 1 file was changed with 2 insertions and 3
deletions (your numbers may be slightly different if you had more of
fewer blank lines in the file).

## Check the status

Finally let's check the status again.

`git status`{{execute}}

The working directory is clean and ready for you to continue.
