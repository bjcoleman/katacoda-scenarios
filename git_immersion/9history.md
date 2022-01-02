## Goals

* Learn how to view the history of the project.

Getting a listing of what changes have been made is the function of
the `git log` command.

`git log`{{execute}}

This command lists of all four commits that we have made to the
repository so far.

## One Line Histories

 You have a great deal of control over exactly what the `log` command
displays.  For example, you can tell `git` to list each commit as a signle
line

`git log --pretty=oneline`{{execute}}

## Controlling Which Entries are Displayed

There are a lot of options for selecting which entries are
displayed in the log.  Play around with the following options:

`git log --pretty=oneline --max-count=2`{{execute}}

`git log --pretty=oneline --since='5 minutes ago'`{{execute}}

`git log --pretty=oneline --until='5 minutes ago'`{{execute}}

`git log --pretty=oneline --author=<your name>`{{copy}} (fill in your name)

`git log --pretty=oneline --all`{{execute}}

See `man git-log`{{execute}} for all the details.  (Press `q` to exit the `man`
  page.)

# The Ultimate Log Format

`git log --pretty=format:'%h %ad | %s%d [%an]' --graph --date=short`{{execute}}

Let's look at it in detail:

* `--pretty="..."` defines the format of the output.
* `%h` is the abbreviated hash of the commit
* `%d` are any decorations on that commit (e.g. branch heads or tags)
* `%ad` is the author date
* `%s` is the comment
* `%an` is the author name
* `--graph` informs git to display the commit tree in an ASCII graph layout
* `--date=short` keeps the date format nice and short

This is a lot to type every time you want to see the log.
Fortunately we will learn about git aliases in the next step.
