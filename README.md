# JSRegexp

[![Gem Version](https://badge.fury.io/rb/jsregexp.svg)](https://badge.fury.io/rb/jsregexp)
[![Build Status](https://travis-ci.org/lucerion/jsregexp.svg?branch=master)](https://travis-ci.org/lucerion/jsregexp)

JSRegexp is a converter from Ruby Regexp to a valid JavaScript RegExp format


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'jsregexp'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install jsregexp


## Usage

``` ruby
JSRegexp.convert(/\Afoo/)   # => '^foo'
JSRegexp.convert('/\Gbar/') # => '^bar'
JSRegexp.convert('baz\Z')   # => 'baz$'
```


## License

[BSD-3-Clause](LICENSE)
