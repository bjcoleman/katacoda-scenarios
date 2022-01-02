## Goals

* Learn how to move a file within a repository.

## Move the `hello.py` file into a `src` directory.

In many projects we place our code in a `src` folder, so let's
move our code there.

`mkdir src`{{execute}}

`mv hello.py src`{{execute}}

We have accomplished our goal, but `git` doesn't know about the change.

`git status`{{execute}}

As the output indicates, `git` thinks that `hello.py` was deleted
and a new file was added in `src`.

We will have to tell `git` about each of these changes individually.


`git rm hello.py`{{execute}}

`git add src/hello.py`{{execute}}

`git status`{{execute}}

Notice that `git` now recognizes these steps as a rename (`hello.py` to
  `src/hello.py`).


## Undo the Changes

Before we see the fast way to move a file, we need to move the file back.

`git reset`{{execute}}

`mv src/hello.py .`{{execute}}

`git status`{{execute}}

Now `git` thinks we have not made any changes.


## The Fast Way to Move a File

We can accomplish the move in a single step.


`git mv hello.py src`{{execute}}

`git status`{{execute}}

## Let's commit this change

`git commit -m "Move source to src folder"`{{execute}}
