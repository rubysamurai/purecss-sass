# Pure CSS for Sass

[![Gem Version](https://badge.fury.io/rb/purecss-sass.svg)](https://badge.fury.io/rb/purecss-sass)
[![npm version](https://badge.fury.io/js/purecss-sass.svg)](https://badge.fury.io/js/purecss-sass)
[![CI](https://github.com/rubysamurai/purecss-sass/workflows/CI/badge.svg)](https://github.com/rubysamurai/purecss-sass/actions?query=workflow%3ACI)

`purecss-sass` is a Sass-powered version of [Pure CSS](https://purecss.io/), allowing flexible integration of all Pure's components at once or individually.

Original Pure CSS files are converted using `sass-convert` and otherwise untouched and unmodified.

## Installation

### npm / Yarn

**npm:**

```bash
npm install purecss-sass
```

**Yarn 1 (Classic):**

```bash
yarn add purecss-sass
```

Import it in your Sass file:

```scss
@import 'purecss-sass/vendor/assets/stylesheets/purecss';
```

### Ruby on Rails

Update your `Gemfile`:

```ruby
gem 'purecss-sass'
```

Run `bundle` to install the gem.

Modify `/app/assets/stylesheets/application.scss` to include:

```scss
@import 'purecss';
```

> Ensure your stylesheet file uses the `.scss` extension and remove any `*= require_tree .` and `*= require_self` directives.

## Usage

Each component can be imported individually:

```scss
// npm and Yarn:
@import 'purecss-sass/vendor/assets/stylesheets/purecss/base';
@import 'purecss-sass/vendor/assets/stylesheets/purecss/buttons';
@import 'purecss-sass/vendor/assets/stylesheets/purecss/forms';
@import 'purecss-sass/vendor/assets/stylesheets/purecss/forms-nr';
@import 'purecss-sass/vendor/assets/stylesheets/purecss/grids';
@import 'purecss-sass/vendor/assets/stylesheets/purecss/grids-responsive';
@import 'purecss-sass/vendor/assets/stylesheets/purecss/menus';
@import 'purecss-sass/vendor/assets/stylesheets/purecss/tables';

// Ruby on Rails:
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

Pure CSS for Sass follows the versioning of the upstream Pure CSS, but the last version number may be ahead for project-specific updates.

## Acknowledgments

Pure CSS for Sass is inspired from [bootstrap-sass](https://github.com/twbs/bootstrap-sass) by Bootstrap team.

## License

Pure © Yahoo! Inc. Licensed under the [BSD](https://github.com/pure-css/pure/blob/master/LICENSE) license.

`purecss-sass` © Dmitriy Tarasov. Licensed under the [MIT](LICENSE.txt) licence.
