## Goals

* Learn how to revert changes in the working directory

## Change `hello.py`

Sometimes you have modified a file in your local working directory
and you wish to just revert to what has already been committed.  The
checkout command will handle that.

Change `hello.py` to have a bad comment.

`"""
Hello World Program
"""
import sys
if len(sys.argv) == 2:
    name = sys.argv[#1]
else:
    name = 'World'
print('Hello {}!'.format(name))`{{copy}}

# Check the Status

First, check the status of the working directory.

`git status`{{execute}}

We see that the `hello.py` file has been modified, but hasn't been
staged yet.

## Revert the changes in the working directory

Use the `checkout` command to checkout the repository's version of
the `hello.py` file.


`git checkout hello.py`{{execute}}

`git status`{{execute}}

`cat hello.rb`{{execute}}


The status command shows us that there are no outstanding changes
in the working directory.  And the "bad comment" is no longer part of
the file contents.
