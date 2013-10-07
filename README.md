<a href="http://blog.cloud66.com/post/62900887610/introducing-cloud-66-easydeploy">
![Logo](http://cdn.cloud66.com/images/easy-deploy.png)
</a>

Fulcrum
=======

Fulcrum is an application to provide a user story based backlog management
system for agile development teams.  See
[the project page](http://wholemeal.co.nz/projects/fulcrum.html) for more
details.

[![Build Status](https://travis-ci.org/malclocke/fulcrum.png?branch=master)](https://travis-ci.org/malclocke/fulcrum)



![Fulcrum Screenshot](https://github.com/malclocke/fulcrum/raw/master/doc/screenshot.png)

Get involved
------------

Fulcrum is still in early development, so now is the time to make your mark on
the project.

There are several communication channels for Fulcrum:

* [Follow @fulcrumagile on Twitter](https://twitter.com/fulcrumagile)
* [Fulcrum Users](http://groups.google.com/group/fulcrum-users) - A
  discussion group for users and developers of Fulcrum.
* You might also find someone in #fulcrum on the Freenode IRC network if you're
  looking for realtime help.

See the [Development](#development) section below for details on contributing
to the project, and [Translating](#translating) for details on how to help
translate Fulcrum into your native language.

Goals
-----

Fulcrum is a clone of [Pivotal Tracker](http://pivotaltracker.com/).  It will
almost certainly never surpass the functionality, usability and sheer
awesomeness of Pivotal Tracker, but aims to provide a usable alternative for
users who require a Free and Open Source solution.

Installation
------------

Fulcrum is still a work in progress, but if you're really keen to try it out
these instructions will hopefully help you get up and running.

First up, your system will need the
[prerequisites for running Ruby on Rails installed](http://rubyonrails.org/download)

Once you have these:

    # Checkout the project
    $ git clone git://github.com/malclocke/fulcrum.git
    $ cd fulcrum

    # Install the project dependencies
    $ gem install bundler
    $ bundle install

    # Set up the development database
    $ bundle exec rake fulcrum:setup db:setup

    # Start the local web server
    $ rails server

You should then be able to navigate to `http://localhost:3000/` in a web browser.
You can log in with the test username `test@example.com`, password `testpass`.

## Deploying with Cloud 66
Deploying and maintaining a Fulcrum setup through Cloud 66 is extremely easy. 
Click the badge and follow the instructions below to deploy!

#### Deploying on Cloud 66
Simply follow 7 steps on [building your stack](https://www.cloud66.com/help/first_stack), sign up for a Sendgrid account and set 
the environment variables below to have your own fully functioning Fulcrum installation up and running. 

Note: Setting environment variables is done during step five, before you click 'deploy':
![Environment variables](https://raw.github.com/cloud66-samples/fulcrum/master/doc/environment_variables.png)

1. APP_HOST = your server IP/domain
2. MAILER_SENDER = the email address used to send out emails
3. SENDGRID_USERNAME = your Sendgrid username
4. SENDGRID_PASSWORD = your Sendgrid password
5. SENDGRID_DOMAIN = the domain you wish to send emails from

Default login details for development environment:

Username: 'test@example.com'

Password: 'testpass'

Translating
-----------

Below is an example of how you might go about translating Fulcrum to German.

* Find the name of your locale, in this case we are using `de`
* Copy the `config/locales/en.yml` file to `config/locales/de.yml`
* Edit the file and update all the translated strings in quotes on the right
  hand side.
* Add your new locale to `config.i18n.available_locales` in
  `config/application.rb`
* Run `rake i18n:js:export` to build the Javascript translations.

Thats it!  Ideally you should send your translation as a pull request so you
get credit for it, but if you do not wish to do this please send the file to
one of the mailing lists.

If Fulcrum has already been translated for your language, please take the time
to check the translation database is complete for your language.  You can do
this by running the `rake i18n:missing_keys` task.  If you find any missing
keys for your language please add them.

Development
-----------

Fulcrum is currently welcoming contributions.  If you'd like to help:

* Check the [issue queue](http://github.com/malclocke/fulcrum/issues) for a
  list of the major features which are yet to be implemented.  These have the
  `feature` and `unstarted` labels.  If a feature you'd like to work on isn't
  there, add an issue.
* Leave a description of how you are going to implement the feature.  Failure
  to do this may lead to you implementing the feature in a way that might
  conflict with future plans for Fulcrum, and so increase the chances of your
  work being rejected or needing a rework.
* If you'd like to discuss anything about the issue in greater detail with
  other developers, do so on the
  [Fulcrum Developers](http://groups.google.com/group/fulcrum-devel) mailing
  list.

Here are some general guidelines for contributing:

* Make your changes on a branch, and use that branch as the base for pull
  requests.
* Try to break changes up into the smallest logical blocks possible.  We'd
  prefer to receive many small commits to one large one in a pull request.
* Feel free to open unfinished pull requests if you'd like to discuss work
  in progress, or would like other developers to test it.
* All patches changes be covered by tests, and should not break the existing
  tests, unless a current test is invalidated by a code change.  This includes
  Javascript, which is covered with a Jasmine test suite in `spec/javascripts/`.
* Run `rake spec` to check the Rails test suite is green. You will need 
  Firefox with Selenium installed to run the integration tests.
* To run the Javascript test suite, run `rake jasmine` and point your browser
  to `http://localhost:8888/`
* For any UI changes, please try to follow the
  [Tango theme guidelines](http://tango.freedesktop.org/Tango_Icon_Theme_Guidelines).
* The easiest way to test the impact of CSS or view changes is using the
  'testcard' at `http://localhost:3000/testcard`.  This is a fake project which
  exposes as many of the view states as possible on one page.


Colophon
--------

Fulcrum is built with the following Open Source technologies:

* [Ruby on Rails](http://rubyonrails.org/)
* [Backbone.js](http://documentcloud.github.com/backbone/)
* [jQuery](http://jquery.com/)
* [Tango Icon Library](http://tango.freedesktop.org/Tango_Icon_Library)
* [Jasmine](http://pivotal.github.com/jasmine/)
* [Sinon](http://sinonjs.org/)

License
-------
Copyright 2011-2013, Malcolm Locke.

Fulcrum is made available under the Affero GPL license version 3, see
LICENSE.txt.
