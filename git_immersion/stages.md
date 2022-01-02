A separate staging step in `git` is in line with the philosophy of
getting out of the way until you need to deal with source control.
You can continue to make changes to your working directory, and then
at the point you want to interact with source control, `git` allows you
to record your changes in small commits that record exactly what you
did.

For example, suppose you edited three files `a.py`, `b.py`, and
`c.py`.  Now you want to commit all the changes, but you want the
changes in `a.py` and `b.py` to be a single commit, while the changes
to `c.py` are not logically related to the first two files and should
be a separate commit.

You could do the following:

```
git add a.py
git add b.py
git commit -m "Changes for a and b"
```

```
git add c.py
git commit -m "Unrelated change to c"
```

By separating staging and committing, you have the ability to
easily fine tune what goes into each commit.
