## Goals

* Learn that git works with changes, not files.

Most source control systems work with files.  You add a file to
source control and the system will track changes to the file from that
point on.

`Git` focuses on the changes to a file rather than the file itself.
When you say `git add file`, you are not telling `git` to add the file
to the repository.  Rather you are saying that `git` should make note of
the current state of that file to be committed later.

## First Change: Allow a default name

Change the "Hello, World" program to have a default value if a
command line argument is not supplied.


`import sys
if len(sys.argv) == 2:
    name = sys.argv[1]
else:
    name = 'World'
print('Hello {}!'.format(name))`{{copy}}

## Add this Change

Now add this change to the git's staging area.

`git add hello.py`{{execute}}

`git status`{{execute}}

`git` indicates that the changes will be committed.

## Second change: Add a comment

Now add a comment to the "Hello, World" program.

`import sys
 # Use "World" if the user does not provide a name as a command line parameter
if len(sys.argv) == 2:
    name = sys.argv[1]
else:
    name = 'World'
print('Hello {}!'.format(name))`{{copy}}

## Check the current status

`git status`{{execute}}

Notice how `hello.py` is listed twice in the status.  The first
change (adding a default) is staged and is ready to be committed.  The
second change (adding a comment) is unstaged.  If you were to commit
right now, the comment would not be saved in the repository.

Let's try that.

## Committing

Commit the staged change (the default value), and then recheck the
status.

`git commit -m "Added a default value"`{{execute}}

`git status`{{execute}}

The status command is telling you that `hello.py` has unrecorded changes,
but is no longer in the staging area.

## Add the Second Change

Now add the second change to staging area, then run `git status`.

`git add .`{{execute}}

`git status`{{execute}}

>*NOTE:* We used the current directory ('.') as the
file to add.  This is a really convenient shortcut for adding in all
the changes to the files in the current directory and below.  But
since it adds everything, it is a _really_ good idea to check the status
before doing an `add .`>, just to make sure you don't add any
file that is not intended.

>I wanted you to see the "add ." trick, but we will continue to add
explicit files in the rest of this tutorial just to be safe.

Now the second change has been staged and is ready to commit.

## Commit the Second Change

`git commit -m "Added a comment"`{{execute}}

`git status`{{execute}}

The `git add` command reports that the file was changed with 1 insertion (the comment).  The `git status` command reports that there are no changes.
