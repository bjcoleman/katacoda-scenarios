## Goals

* Learn how to create a local branch in a repository

It's time to do a major rewrite of the hello world functionality.
Since this might take awhile, you'll want to put these changes into a
separate branch to isolate them from changes in master.

## Create a Branch

Let's call our new branch `greet`.


`git checkout -b greet`{{execute}}

`git status`{{execute}}

*NOTE:* `git checkout -b <branchname>` is a shortcut for
`git branch <branchname>` followed by a `git checkout <branchname>`.

Notice that the `git status` command reports that you are on the
`greet` branch.

## Add a Greeter class

Create a new file `greeter.py` that contains the following class

`class Greeter:
    def __init__(self, name):
        self.name = name
    def greet(self):
        return 'Hello {}'.format(self.name)
`{{copy}}

Then add the file to the repository.

`git add src/greeter.py`{{execute}}

`git commit -m "Added greeter class"`{{execute}}

## Modify the main program

Update the `hello.py` file to use greeter

`"""
Hello World Program
"""
import sys
from greet import Greeter

if len(sys.argv) == 2:
    name = sys.argv[1]
else:
    name = 'World'

greeter = Greeter(name)
print(greeter.greet())
`{{copy}}

## Test the Program

Let's make sure it works before we commit.

`python3 src/hello.py`{{execute}}

`python3 src/hello.py Martha`{{exercute}}

## Commit the changes

Now that we know it works, we can commit our changes.

`git add hello.py`{{execute}}

`git commit -m "Use greeter object"`{{execute}}
