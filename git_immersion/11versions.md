## Goals

* Learn how to checkout any previous snapshot into the working directory.

Going back in history is very easy.  The `checkout` command will copy
any snapshot from the repository to the working directory.

## Get the hashes for previous versions

`git hist`{{execute}}


*Note:* You did remember to define `hist` in your
`.gitconfig` file, right?  If not, review the previous step.


Examine the log output and find the hash for the first commit.  It
should be the last line of the `git hist` output.  Use that hash code
(the first 7 characters are enough) in the command below.  Then check
the contents of the `hello.py` file.

`git checkout <hash>`{{copy}}

`cat hello.py`{{execute}}

The output of the `checkout` command explains the situation pretty
well.  Notice the contents of the `hello.py` file are the original contents.

## Return the latest version in the master branch

`git checkout master`{{execute}}

`cat hello.py`{{execute}}

`master` is the name of the default branch.  By checking out a branch
by name, you go to the latest version of that branch.
