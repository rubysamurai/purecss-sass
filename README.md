# Pure CSS for Sass

[![Gem Version](https://badge.fury.io/rb/purecss-sass.svg)](http://badge.fury.io/rb/purecss-sass)
[![npm version](https://badge.fury.io/js/purecss-sass.svg)](http://badge.fury.io/js/purecss-sass)
[![Build Status](https://travis-ci.org/rubysamurai/purecss-sass.svg?branch=master)](https://travis-ci.org/rubysamurai/purecss-sass)

[Pure](https://purecss.io/) is a set of small, responsive CSS modules that you can use in every web project.

`purecss-sass` is a Sass-powered version of Pure CSS for your applications. It allows to include all of Pure's components at once or load them individually.

Original Pure CSS files are converted using `sass-convert` and otherwise untouched and unmodified.

## Installation

* [Ruby on Rails](#ruby-on-rails)
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

> Note: Default Rails installation comes with `.css` file extension for stylesheet assests files, make sure you change it to `.scss` and remove all the `*= require_tree .` and `*= require_self` statements from file. Alternatively, to keep original `application.css` file, you can create `custom.scss` file in the same folder and import `purecss` there.

Restart Rails web server if it was running and now your Rails application is powered by Pure CSS for Sass.

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
@import 'purecss/grids';
@import 'purecss/grids-responsive';
@import 'purecss/menus';
@import 'purecss/tables';
```

## Versioning

Pure CSS for Sass follows the upstream version of Pure. But last version number may be ahead, in case there is a need to release project specific changes.

## Credits

Pure CSS for Sass is inspired from [bootstrap-sass](https://github.com/twbs/bootstrap-sass) by Bootstrap team.

## License

Pure © Yahoo! Inc. Licensed under the [BSD](https://github.com/pure-css/pure/blob/master/LICENSE) license.

`purecss-sass` © Dmitriy Tarasov. Licensed under the [MIT](https://github.com/rubysamurai/purecss-sass/blob/master/LICENSE.txt) licence.
