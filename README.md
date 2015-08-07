# Pure CSS for Sass

[![Gem Version](https://badge.fury.io/rb/purecss-sass.svg)](http://badge.fury.io/rb/purecss-sass)
[![npm version](https://badge.fury.io/js/purecss-sass.svg)](http://badge.fury.io/js/purecss-sass)
[![Build Status](https://travis-ci.org/rubysamurai/purecss-sass.svg?branch=v0.6.0)](https://travis-ci.org/rubysamurai/purecss-sass)

Yahoo's [Pure](http://purecss.io/) is a set of small, responsive CSS modules that you can use in every web project.

`purecss-sass` is a Sass-powered version of Pure CSS for your applications. It allows to include all of Pure components at once or load them individually. Tested and working with Ruby on Rails, Compass, Sprockets, Bower, npm etc.

Original Pure CSS files are converted using `sass-convert` and otherwise untouched and unmodified.

## Installation

* [Ruby on Rails](#ruby-on-rails)
* [Compass](#compass)
* [Bower](#bower)
* [npm](#npm)

### Ruby on Rails

Open your Rails application's `Gemfile` and add this line:

```ruby
gem 'purecss-sass'
```

Save `Gemfile` and execute `bundle` command to install the gem.

Open `/app/assets/stylesheets/application.scss` file and add this line:

```scss
@import 'purecss';
```

> Note: Default Rails installation comes with `.css` file extension for stylesheet assests files, make sure you change it to `.scss` and remove all the `//= require` and `//= require_tree` statements from file. Alternatively, to keep original `application.css` file, you can create `custom.scss` file in the same folder and import `purecss` there.

Restart Rails web server if it was running and now your Rails application is powered by Pure CSS for Sass.

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

This will create new file `styles.scss`, that imports all of Pure components.

Instead of the install command provided above, you can manually import `purecss`:

```
@import 'purecss';
```

#### New Compass project

If you are creating a new Compass project and wish to include `purecss-sass`, run command:

```
compass create project-name -r purecss-sass --using purecss
```

This command will create a new Compass project with `styles.scss` file, that imports all of Pure components.

### Bower

To install `purecss-sass` Bower package execute this command:
```
bower install purecss-sass#0.6.0+1
```

Then you will have a local copy of `purecss-sass` stylesheets to use in your application.

### npm

To install `purecss-sass` npm package execute this command:
```
npm install purecss-sass
```

This will fetch latest version of `purecss-sass` stylesheets to drop into your Sass powered application.

## Usage

By default, using `@import 'purecss';`, all of Pure CSS components are imported.

You can import individual Sass components like this:

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

## Versioning

Pure CSS for Sass follows the upstream version of Yahoo's Pure. But last version number may be ahead, in case there is a need to release project specific changes.

Please always refer to the [CHANGELOG](https://github.com/rubysamurai/purecss-sass/blob/master/CHANGELOG.md) when upgrading.

## Contributing

Anyone is welcome to contribute to Pure CSS for Sass. Please [raise an issue](https://github.com/rubysamurai/purecss-sass/issues), fork the project, make changes to your forked repository and submit a pull request.

## Credits

Pure CSS for Sass is inspired from [bootstrap-sass](https://github.com/twbs/bootstrap-sass) by Twitter Bootstrap team.

## License

Pure © 2014 Yahoo! Inc. Released under a [BSD](https://github.com/yahoo/pure/blob/master/LICENSE.md) license.

`purecss-sass` © 2015 Dmitriy Tarasov. Released under a [MIT](https://github.com/rubysamurai/purecss-sass/blob/master/LICENSE.txt) licence.
