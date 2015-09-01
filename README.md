# RVDE-LSU-3380 

Main repo for project work.

## Getting Started

STUB: Keep this section up to date. This will have info and
instructions for

- setting up / installing / running /compiling the program locally; and
- if applicable, deploying the program.

## Writing a Feature

Always create a feature branch for any new code. Use the following naming
scheme: `githubusername-feature-name` (so who owns the branch and what purpose
it serves can quickly be determined). Start with a branch based on master.

    $ git checkout master
    $ git pull
    $ git checkout -b githubusername-feature-name

As you work, commit when it's logical to do so. Write [good commit
messages](http://tbaggery.com/2008/04/19/a-note-about-git-commit-messages.html).
(Limit the first line to 50 chars, and use the imperative mood (i.e. it has to 
make sense if you begin it with 'Please')).

    $ git add -A
    $ git status
    $ git commit -v

### Keeping up with master

Pull in new changes on master frequently to avoid major conflicts. There are two
ways to do this. If you're working alone, you can `rebase` as often as you
want. Otherwise, you'll have to use `merge`.

In either case, note the direction is master --> yourbranch and not the other
way around.

1. `rebase` your branch onto the latest node in master (i.e. rewrite history).
Easier and cleaner, BUT INAPPROPRIATE IF THERE'S SOMEONE ELSE WORKING ON YOUR
BRANCH.

  ```bash
  $ git checkout githubusername-feature-name
  $ git fetch origin
  $ git rebase origin/master
  ```

2. `merge` latest master back into your branch. Choose this option if your
branch has others working on it. Those new commits from master will clutter
your branch's history, but this is usually better than potentially having to
deal with significant merge conflicts later.

  ```bash
  $ git checkout githubusername-feature-name
  $ git fetch origin
  $ git merge master githubusername-feature-name
  ```

### Finishing your feature, and code review

When the feature is complete, make sure the tests pass.

    $ ## TODO We haven't picked a testing tool yet

Push to Github

    $ git push origin githubusername-feature-name

Then using the github website, find your branch and create a pull request. Label
it with `needs review`. Then discuss it with at least one other pair of
eyeballs.

### Squash, then merge back in

After you get a :+1: or a "good to merge", merge the changes into
master.

First, rebase. Pick only commits that are necessary. Squash others. The
goal is to condense your history into a comprehensible series of
commits (a single commit, if possible). Write [good commit 
messages](http://tbaggery.com/2008/04/19/a-note-about-git-commit-messages.html),
and include refs to the motivating issue(s) as appropriate.

    $ git checkout githubusername-feature-name
    $ git fetch origin 
    $ git rebase -i origin/master

View the changelog to see if it looks good.

    $ git log origin/master..githubusername-feature-name
    $ git diff --stat origin/master

Finally, merge and push.

    $ git checkout master
    $ git merge githubusername-feature-name --ff-only
    $ git push

Clean up remote and local branches.

    $ git push origin --delete githubusername-feature-name
    $ git branch -d githubusername-feature-name

Prune local repo so that it only shows remote branches that still exist:

    $ git fetch origin && git remote update origin --prune
    $ git branch -a

## Related Repos

- [LSU3380groupRVDE/Proposal](https://github.com/LSU3380groupRVDE/Proposal)
