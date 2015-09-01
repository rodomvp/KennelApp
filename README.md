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

Pull in new changes on master frequently to avoid major conflicts.

    $ git fetch origin
    $ git rebase origin/master

When the feature is complete, make sure the tests pass.

    $ ## TODO We haven't picked a testing tool yet

Make a pull request when the feature is complete. Write a [good commit
message](http://tbaggery.com/2008/04/19/a-note-about-git-commit-messages.html).

    $ git add -A
    $ git status
    $ git commit -v

Push to Github and create a pull request.

    $ git push origin githubusername-feature-name

After you get a :+1: or a "good to merge" comment, merge the changes into
master.

First, rebase. Pick only commits that are necessary. Squash others.

    $ git fetch origin git rebase -i origin/master

View the changelog, merge and push.

    $ git log origin/master..githubusername-feature-name
    $ git diff --stat origin/master
    $ git checkout master
    $ git merge githubusername-feature-name --ff-only
    $ git push

Clean up remote and local branches.

    $ git push origin --delete githubusername-feature-name
    $ git branch -d githubusername-feature-name


## Related Repos

- [LSU3380groupRVDE/Proposal](https://github.com/LSU3380groupRVDE/Proposal)
