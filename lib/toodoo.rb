require 'toodoo/version'
require 'term/ansicolor'
require 'date'

module Toodoo
end

class Color
  extend Term::ANSIColor
end

module Kernel
  def toodoo(description, priority = :low, due_date = Date.today)
    if due_date >= Date.today
      print Color.red, Color.bold, "TODO: " << description, "\n", caller[0], Color.clear, "\n"
    end

    yield unless block_given?
  end
end
