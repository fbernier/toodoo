# Toodoo

Silly and probably not so useful gem which adds a toodoo kernel method to remind you you've got stuff to fix by shouting colored warnings in your console as you hit this piece of code in your development.
Inspired by this gist: https://gist.github.com/2210448

## Installation

Add this line to your application's Gemfile:

    gem 'toodoo'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install toodoo

## Usage

```ruby
require 'toodoo'

def as_block
  toodoo('replace this shitty code', :high) do
    a = 1
    b = 2
    puts 'herp derp'
    c = a + b
  end
end

def as_method
  a = 1
  puts 'derp herp'
  toodoo('fix this please')
  b = a * 2
end

as_block
as_method
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
