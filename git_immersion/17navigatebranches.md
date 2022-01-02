## Goals

* Learn how to navigate between the branches of a repository

You now have two branches in your project:

`git hist --all`{{execute}}

## Switch to the Master Branch

We use the `git checkout` command to switch between branches.

`git checkout master`{{execute}}

`cat src/hello.py`{{execute}}

You are now on the master branch.  You can tell because the
`hello.py` file doesn't use the `Greeter` class.

## Switch Back to the Greet Branch

`git checkout greet`{{execute}}

`cat src/hello.py`{{execute}}

The contents of the `src/hello.py` confirms we are back on the
`greet` branch.
