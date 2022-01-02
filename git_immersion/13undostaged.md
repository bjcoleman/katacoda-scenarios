## Goals

* Learn how to revert changes that have been staged

## Change the file and stage the change

## Modify the `hello.py` file to have a bad comment

`"""
Hello World Program
"""
import sys
if len(sys.argv) == 2:
    name = sys.argv[#1]
else:
    name = 'World'
print('Hello {}!'.format(name))`{{copy}}

When you run the program now you will get a syntax error because of the
bad comment.

`python3 hello.py`{{execute}}

And then go ahead and stage it.

`git add hello.py`{{execute}}

## Check the Status

Check the status of your unwanted change.

`git status`{{execute}}

The status output shows that the change has been staged and is
ready to be committed.

## Reset the Staging Area

Fortunately the status output tells us exactly what we need to do
to unstage the change.

`git reset HEAD hello.py`{{execute}}

The `reset` command resets the staging area to be whatever is in
`HEAD`.  This clears the staging area of the change we just staged.

The `reset` command (by default) doesn't change the working
directory.  So the working directory still has the unwanted comment in
it.  We can use  the `checkout` command of the previous step to remove
the unwanted change from the working directory.

`git checkout hello.py`{{execute}}

`git status`{{execute}}


And our working directory is clean once again.
