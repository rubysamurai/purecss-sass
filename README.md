# Pure CSS for Sass

[![Gem Version](https://badge.fury.io/rb/purecss-sass.svg)](https://badge.fury.io/rb/purecss-sass)
[![npm version](https://badge.fury.io/js/purecss-sass.svg)](https://badge.fury.io/js/purecss-sass)
[![CI](https://github.com/rubysamurai/purecss-sass/workflows/CI/badge.svg)](https://github.com/rubysamurai/purecss-sass/actions?query=workflow%3ACI)

`purecss-sass` is a Sass-powered version of [Pure CSS](https://purecss.io/) for your applications, allowing to include all of Pure's components at once or load them individually.

Original Pure CSS files are converted using `sass-convert` and otherwise untouched and unmodified.

## npm and Yarn

To install `purecss-sass` npm package execute this command:

```
$ npm install purecss-sass
```

If you are using Yarn:

```
$ yarn add purecss-sass
```

## Ruby on Rails

Open your `Gemfile` and add this line:

```ruby
gem 'purecss-sass'
```

Save `Gemfile` and execute `bundle` command to install the gem.

Open `/app/assets/stylesheets/application.scss` file and add this line:

```scss
@import 'purecss';
```

> Note: Default Rails-generated application comes with `.css` file extension for stylesheet assets files, make sure you change it to `.scss` and remove all the `*= require_tree .` and `*= require_self` statements from the file.

## Usage

By default, using `@import 'purecss';`, all of Pure CSS **responsive components** are imported.

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

Pure CSS for Sass follows the upstream version of Pure. But the last version number may be ahead, in case there is a need to release project-specific changes.

## Credits

Pure CSS for Sass is inspired from [bootstrap-sass](https://github.com/twbs/bootstrap-sass) by Bootstrap team.

## License

Pure © Yahoo! Inc. Licensed under the [BSD](https://github.com/pure-css/pure/blob/master/LICENSE) license.

`purecss-sass` © Dmitriy Tarasov. Licensed under the [MIT](LICENSE.txt) licence.
