## Goals

* Learn how to monitor the state of the working directory

## Change the "Hello, World" program.

It's time to change our hello program to take an argument from the
command line.  Open `hello.py` in the editor and change the code to be:

`name = input('Enter your name: ')
print('Hello {}!'.format(name))
`{{copy}}

## Check the status

Now check the status of the working directory.

`git status`{{execute}}

The first thing to notice is that git knows that the `hello.py`
file has been modified, but `git` has not yet been notified of these
changes.

Also notice that the status message gives you hints about what you
need to do next.  If you want to add these changes to the repository,
then use the `git add` command.  Otherwise the `git restore` command
can be used to discard the changes.

HINT: If `git` reports `nothing to commit`, then the editor probably has
not auto-saved yet.  Wait a few seconds and try again.
