require 'toodoo/version'
require 'rainbow'
require 'date'

module Toodoo
  class << self
    attr_accessor :configuration
  end

  class Configuration
    attr_accessor :priority_color

    def initialize
      @priority_color ||= { :low => :green, :medium => :yellow, :high => :red }
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
      print "TODO: ".foreground(:blue) + (description  + "\n" + caller[0] + "\n").foreground(Toodoo.configuration.priority_color[priority])
    end

    yield if block_given?
  end
end
