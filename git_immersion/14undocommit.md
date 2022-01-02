## Goals

* Learn how to remove the most recent commits from a branch

Often we make a commit and immediately realize that it was a
mistake.  It would be nice to have a "take back" command that would
allow us to pretend that the incorrect commit never happened.  The
"take back" command would even prevent the bad commit from showing up
the `git log` history.  It would be as if the bad commit never
happened.

## Add unwanted code

Change `hello.py` to have an unwanted print statement

`"""
Hello World Program
"""
import sys
if len(sys.argv) == 2:
    print(sys.argv)
    name = sys.argv[1]
else:
    name = 'World'
print('Hello {}!'.format(name))
`{{copy}}

Now add and commit the change.

`git add hello.py`{{execute}}

`git commit -m "Oops, we left debugging code"`{{execute}}


## The `reset` command

When given a commit reference (i.e. a hash, branch or tag name),
the `reset` command will:

* Rewrite the current branch to point to the specified commit
* Optionally reset the staging area to match the specified commit
* Optionally reset the working directory to match the specified commit

## Check Our History

Let's do a quick check of our commit history.

`git hist`{{execute}}

Note the hash code of the *previous* commit (where we added a comment).

Use this hash to reset to the last known good state of the code


`git reset --hard <hash>`{{copy}}

`git hist`{{execute}}


Our master branch now points to the previous comm and the Oops commit
is no longer in the branch.  The `--hard` parameter indicates that the
working directory should be updated to be consistent with the new branch head.

## Dangers of Reset

Resets on local branches are generally safe.  Any "accidents" can
usually be recovered from by just resetting again with the desired
commit.

However, if the branch is shared on remote repositories, resetting
can confuse other users sharing the branch.
