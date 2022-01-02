
## Goals

* Learn how to stage changes for later commits

## Add Changes

Now tell `git` to stage the changes and check the status:

`git add hello.py`{{execute}}

`git status`{{execute}}

The change to the `hello.py` file has been staged.  This means that
git now knows about the change, but the change hasn't been
*permanently* recorded in the repository yet.  The next commit
operation will include the staged changes.

If you decide you *don't* want to commit that change after all, the
status command reminds you that the `git restore --staged` command can be used to
unstage that change.
