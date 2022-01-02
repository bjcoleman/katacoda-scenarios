## Goals

* Learn how to setup aliases and shortcuts for git commands

## Common Aliases

`git status`, `git add`, `git commit`, and `git checkout` are such
common commands that it is useful to have abbreviations for them.

The built-in editor cannot create a new file, so we will use `nano` in
the terminal to edit the `.gitconfig` file:

`nano ~/.gitconfig`{{execute}}

You will see the settings we added at the beginning of this scenario.  Add
the following at the bottom of the file and then save the file:

`[alias]
  co = checkout
  ci = commit
  st = status
  br = branch
  hist = log --pretty=format:'%h %ad | %s%d [%an]' --graph --date=short
`{{copy}}

We've covered the commit and status commands already.  And we just
covered the `log` command in the previous lab. The `checkout` command
will be coming up soon.

With these aliases defined in the `.gitconfig` file you can type
`git co` wherever you used to have to type `git checkout`.  Likewise
with `git st` for `git status` and `git ci` for `git commit`.  And
best of all, `git hist` will allow you to avoid the really long `log`
command.  Try it!

`git hist`{{execute}}
