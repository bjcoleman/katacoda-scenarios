## Goals

* Learn how to create a git repository from scratch.

## A "Hello, World" program

The folder `hello` contains a simply "hello world" program and a
`README.md` file.  This directory and the files will become our repo.

In the editor (top right of this page) you can click on `README.md` or `hello.py`
to see the current contents of the files.

## Create the Repository

In the terminal go into the `hello folder`:

`cd hello`{{execute}}

To create a git repository from that directory, run the `git init` command.

`git init`{{execute}}


## Add the program to the repository

Now let's add the "Hello, World" program to the repository.


`git add hello.py`{{execute}}

`git commit -m "First Commit"`{{execute}}


HINT:  If you see a message about "Please tell me who you are" then you forgot
to add your name and email address.  The required commands are in Step 1 of
this scenario.
