# Pure CSS for Sass

[![Gem Version](https://badge.fury.io/rb/purecss-sass.svg)](http://badge.fury.io/rb/purecss-sass)
[![Build Status](https://travis-ci.org/rubysamurai/purecss-sass.svg?branch=v0.6.0)](https://travis-ci.org/rubysamurai/purecss-sass)

`purecss-sass` is a Sass-powered version of [Pure](https://github.com/yahoo/pure/) CSS framework by Yahoo for your Ruby projects. It works with Ruby on Rails, Compass, Sprockets etc.

Original CSS files are converted using `sass-convert` and otherwise untouched and unmodified.

This project is heavily inspired from [bootstrap-sass](https://github.com/twbs/bootstrap-sass) by Twitter Bootstrap team.

## Installation


### Ruby on Rails

Add this line to your Rails application's Gemfile:

```ruby
gem 'purecss-sass'
```

And then execute `bundle` command to install.

Import `purecss` in `application.scss` (or `application.css.scss`) file located in `app/assets/stylesheets/`:

```scss
@import 'purecss';
```

Default Rails installation comes with `.css` file extension for stylesheet assests files, make sure you change it to `.scss` and remove all the `//= require` and `//= require_tree` statements from file.

Alternatively, to keep original `application.css` file, you can create `custom.scss` file in same folder and import `purecss` there.

### Compass

To use Compass extension you'll need to install `purecss-sass` gem:

```
gem install purecss-sass
```

#### Existing Compass project

If you have an existing Compass project, open `config.rb` file and require `purecss-sass` there:

```ruby
require 'purecss-sass'
```

Navigate to your project's folder and run command:

```
compass install purecss -r purecss-sass
```

This will create new file `styles.scss`, that imports Pure components.

Instead of the install command provided above, you can manually import `purecss`:

```
@import 'purecss';
```

#### New Compass project

If you are creating a new Compass project and wish to include `purecss-sass` run command:

```
compass create project-name -r purecss-sass --using purecss
```

This command will create a new Compass project with `styles.scss` file, which imports Pure components.

### Bower

To install `purecss-sass` Bower package execute this command:
```
bower install purecss-sass
```

Then you will have a local copy of `scss` stylesheets to use in your project.

## Usage

By default, using `@import 'purecss';`, all of Pure CSS components are imported.

You can import individual components like this:

```scss
@import 'purecss/base';
@import 'purecss/buttons';
@import 'purecss/forms';
@import 'purecss/forms-nr';
@import 'purecss/grids';
@import 'purecss/grids-responsive';
@import 'purecss/menus';
@import 'purecss/tables';
```

## Contributing

Fork the project and submit a pull request.