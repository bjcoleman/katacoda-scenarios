

## Setup

In this scenario, you are automatically set up so that `git`
commits as a user named "Katacoda Scenario" with an email
address of "scenario@katacoda.com."  This means that your
commits will appear under the "Katacoda Scenario" on Github.

If you would prefer to have commits save using your name
and email address, you can edit the `.gitconfig`{{open}}.

## Fork

In the terminal window you will find the (randomly generated)
name of a repo for you to use along with the Github URL for
the repo.

Open the repo URL in a new tab, and then **fork** the repo
to your personal Github account.

## Clone

Next, clone the repo in the terminal window.


## Setup upstream

In the Github Workflow, developers *push* changes to their
Github account (`origin`) and *pull* changes from the shared
Github account (`upstream`) (repo in the `moco-learn-git`
account).

The remote named `origin` was created when you cloned the repo,
but you have to add `upstream`.  Go back to the repo in the
`moco-learn-git` account and copy the clone URL.  Use this URL
to execute the following command in the terminal:

`git remote add upstream <clone URL>`

Before you continue, execute `git remote -v`{{execute}}.   
Verify that the URLs `origin` refer to your personal account and
the URLs for `upstream` refer to the `moco-learn-git` account.
