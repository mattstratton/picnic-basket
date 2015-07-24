# Contributing to picnic-basket

The first step toward contributing is a desire to improve the project!  Thank
you!

## Quick-contribute

* Create an account on [GitHub](http://github.com).
* Fork the cookbook
* Submit your change as a pull request
* If Matt hasn't looked at your PR or commented on it in a timely manner, please email him at mattstratton@chef.io or contact him on Slack (Chef employees only)


## The Apache License

Licensing is very important to open source projects, it helps ensure
the software continues to be available under the terms that the author
desired. Chef uses the Apache 2.0 license to strike a balance between
open contribution and allowing you to use the software however you
would like to.

The license tells you what rights you have that are provided by the
copyright holder. It is important that the contributor fully
understands what rights they are licensing and agrees to them.
Sometimes the copyright holder isn't the contributor, most often when
the contributor is doing work for a company.

## Ticket Tracker (GitHub Issues)

The [ticket tracker](https://github.com/mattstratton/picnic-basket/issues) is
the most important documentation for the code base. It provides significant
historical information, such as:

* Which release a bug fix is included in
* Discussion regarding the design and merits of features
* Error output to aid in finding similar bugs

Each ticket should aim to fix one bug or add one feature.

## Using git

You can get a quick copy of the repository for this cookbook by
running `git clone
git@github.com:mattstratton/picnic-basket.git`.

For collaboration purposes, it is best if you create a Github account
and fork the repository to your own account. Once you do this you will
be able to push your changes to your Github repository for others to
see and use.

If you have another repository in your GitHub account named the same
as the cookbook, we suggest you suffix the repository with -cookbook.

### Branches and Commits

You should submit your patch as a git branch named after the ticket,
such as ISSUE-22. This is called a _topic branch_ and allows users to
associate a branch of code with the ticket.

It is a best practice to have your commit message have a _summary
line_ that includes the ticket number, followed by an empty line and
then a brief description of the commit. This also helps other
contributors understand the purpose of changes to the code.

    [ISSUE-22] - platform_family and style

    * use platform_family for platform checking
    * update notifies syntax to "resource_type[resource_name]" instead of
      resources() lookup
    * ISSUE-692 - delete config files dropped off by packages in conf.d
    * dropped debian 4 support because all other platforms have the same
      values, and it is older than "old stable" debian release

Remember that not all users use Chef in the same way or on the same
operating systems as you, so it is helpful to be clear about your use
case and change so they can understand it even when it doesn't apply
to them.

## Functional and Unit Tests

This cookbook is set up to run tests under
[Test Kitchen](https://github.com/test-kitchen). It
uses [Serverspec](http://serverspec.org) to run integration tests after the node
has been converged to verify that the state of the node.

Test Kitchen should run completely without exception using the `.kitchen.yml`
file included in the project.

If your changes are only for a specific recipe, run only its
configuration with Test Kitchen. If you are adding a new recipe, or
other functionality such as a LWRP or definition, please add
appropriate tests and ensure they run with Test Kitchen.

Please investigate any failures before submitting your patch.

Any new feature should have unit tests included with the patch with
good code coverage to help protect it from future changes. Similarly,
patches that fix a bug or regression should have a _regression test_.
Simply put, this is a test that would fail without your patch but
passes with it. The goal is to ensure this bug doesn't regress in the
future. Consider a regular expression that doesn't match a certain
pattern that it should, so you provide a patch and a test to ensure
that the part of the code that uses this regular expression works as
expected. Later another contributor may modify this regular expression
in a way that breaks your use cases. The test you wrote will fail,
signaling to them to research your ticket and use case and accounting
for it.

If you need help writing tests, please ask on the [Chef Developer's mailing
list](http://lists.opscode.com/sympa/arc/chef-dev), or the [#chef-hacking IRC
channel](https://botbot.me/freenode/chef-hacking/).

## Versioning Policy

This cookbook follows the [Cookbook Versioning
Policy](http://chef-community.github.io/cvp/) maintained by the [Chef Community
organization on GitHub](https://github.com/chef-community).

## Cookbook Contribution Do's and Don't's

Please **do include tests** for your contribution. If you need help, ask
on the
[chef-dev mailing list](http://lists.opscode.com/sympa/arc/chef-dev)
or the
[#chef-hacking IRC channel](https://botbot.me/freenode/chef-hacking/).
Not all platforms that a cookbook supports may be supported by Test
Kitchen. Please provide evidence of testing your contribution if it
isn't trivial so we don't have to duplicate effort in testing. Chef
10.14+ "doc" formatted output is sufficient.

Please **do indicate new platform (families) or platform versions** in the
commit message, and update the relevant ticket.

If a contribution adds new platforms or platform versions, indicate
such in the body of the commit message(s), and update the relevant
issues. When writing commit messages, it is helpful for others if
you indicate the issue. For example:

    git commit -m '[ISSUE-1041] - Updated pool resource to correctly
    delete.'

Please **do use [foodcritic](http://acrmp.github.com/foodcritic)** to
lint-check the cookbook. Except FC007, it should pass all correctness
rules. FC007 is okay as long as the dependent cookbooks are *required*
for the default behavior of the cookbook, such as to support an
uncommon platform, secondary recipe, etc.

Please **do ensure that your changes do not break or modify behavior for
other platforms** supported by the cookbook. For example if your changes
are for Debian, make sure that they do not break on CentOS.

Please **do not modify the version number** in the metadata.rb, Chef
will select the appropriate version based on the release cycle
information above.

Please **do not update the CHANGELOG.md** for a new version. Not all
changes to a cookbook may be merged and released in the same versions.
Matt will update the CHANGELOG.md when releasing a new version of
the cookbook.
