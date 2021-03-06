# KennelApp 

Main repo for project work. This README is intended for developers.

Master branch is staged at <http://kennelapp.herokuapp.com/>. 

To play with the app, log in with one of these username/password
combos below. These are the same logins that are seeded in a local
server.

- Normal user: `george@internet.com` / `password`
- Admin user: `admin@internet.com` / `cookies`

If you break something, no big deal. Just reset the database by
first logging in to Heroku (see next section), and then doing:

    cd /the/directory/where/you/cloned/KennelApp
    heroku run rake db:reset

## Pushing to heroku

To push to heroku, make sure you have the remote set up:

```
heroku login
git remote -v
```

You should see `heroku  https://git.heroku.com/kennelapp.git (push)` in the output. If not, you need to add it:

```
heroku git:remote -a kennelapp
```

Now you can push to heroku (always pushes local `[master]`):

```
git push heroku
```

## Where to find user documentation

User documentation is located within this repository at:

    app/views/static_pages/_user_documentation.html.md

which renders to the URI:

    https://kennelapp.herokuapp.com/docs

or, more generally, at

    http://{$root}/docs

## Object model

Entity relationship diagram of the models is shown below:
<tt>[diagrams-erd.png]</tt> [^1]. 

![entity relationship diagram][diagrams-erd.png]

[^1]: Caveat: for some reason it doesn't show the
fields for any of the StayEvent subclasses. These fields are:

```
------------------------
FeedingEvent < StayEvent
------------------------
+ did_eat : boolean
+ food_description : text

------------------------
MiscStayEvent < StayEvent
------------------------
(no fields of its own)

------------------------
UdEvent < StayEvent
------------------------
+ did_urinate : boolean
+ did_defecate : boolean
```

[diagrams-erd.png]: doc/diagrams-erd.png
[application_controller.rb]: app/controllers/application_controller.rb

## Getting Started: Prerequisites

This is best done in Linux (Ubuntu or Debian) or OS X. 

On Windows, a good option is to use Vagrant to set up Ubuntu Server
inside VirtualBox (it's "pretty rad", per [this short GoRails
guide](https://gorails.com/guides/using-vagrant-for-rails-development)).

The following need to be installed and configured (there's a 30-minute guide 
at [GoRails](https://gorails.com/setup/)).

- Ruby 2.2.3 (using rbenv, ruby-build, bundler)
- node.js, npm
- PostgreSQL
- [heroku toolbelt](https://toolbelt.heroku.com/) (not described in the
  Go Rails link above, but pretty simple)
- wkhtmltopdf (best done with `sudo apt-get install wkhtmltopdf`, 
  per [this][])

[this]: https://github.com/pdfkit/pdfkit/wiki/Installing-WKHTMLTOPDF

## Installing the App

First, clone this repo (if you haven't already done so)

    $ git clone git@github.com:rodomvp/KennelApp.git
    $ cd KennelApp/

Now create a PostgreSQL user for this project

    $ sudo service postgresql restart # this is probably Ubuntu-specific
    $ sudo -u postgres createuser KennelApp -s

Install all the gems

    $ bundle update
    $ bundle

Install figaro

    $ figaro install

And get the aws keys from any one of the devs (see [the git logs]),
and put it in your `config/application.yml`. For security reasons,
it's not included in the repository.

[the git logs]: https://github.com/rodomvp/KennelApp/commits

Then run the setup script:

    $ ./bin/setup


Finally, reset the database if necessary:

    $ rake db:reset 

## Running the App

Launch the server:

    $ rails server

By default, the app runs at `http://localhost:3000/`.

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

    $ rake test

Push to Github

    $ git push origin githubusername-feature-name

Then using the github website, find your branch and create a pull request. __NB
By default, Gh Pull Requests are for `yourbrach --> master`__, so be sure to
specify that your PR's intention as `yourbranch --> master`.

Label it with `needs review`. Then discuss it with at least one other pair of
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

- [rodomvp/Project_Formalities](https://github.com/rodomvp/Project_Formalities)
