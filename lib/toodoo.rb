require 'toodoo/version'
require 'term/ansicolor'
require 'date'

module Toodoo
  class << self
    attr_accessor :configuration
  end

  class Color
    extend Term::ANSIColor
  end


  class Configuration
    attr_accessor :priority_color

    def initialize
      @priority_color ||= { :low => Color.green, :medium => Color.yellow, :high => Color.red }
    end
  end

  def self.configure
    self.configuration ||= Configuration.new
    yield(configuration) if block_given?
  end

  self.configure
end

module Kernel
  def toodoo(description, priority = :low, due_date = Date.today)
    if due_date >= Date.today
      print Toodoo.Configuration.priority_color[:priority], Color.bold, "TODO: " << description, "\n", caller[0], Color.clear, "\n"
    end

    yield unless block_given?
  end
end
