# JSRegexp

JSRegexp is a converter from Ruby Regexp to valid JavaScript RegExp format

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
  JSRegexp.convert(/\Ahello/) # => '^hello'
```

## License

[MIT](http://opensource.org/licenses/MIT)
