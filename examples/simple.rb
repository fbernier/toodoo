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
