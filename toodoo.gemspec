# -*- encoding: utf-8 -*-
require File.expand_path('../lib/toodoo/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Francois Bernier"]
  gem.email         = ["frankbernier@gmail.com"]
  gem.description   = %q{A gem to warn you about your todos while your code is running.}
  gem.summary       = %q{A gem to warn you about your todos while your code is running.}
  gem.homepage      = ""

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "toodoo"
  gem.require_paths = ["lib"]
  gem.version       = Toodoo::VERSION

  gem.add_development_dependency 'rspec'
  gem.add_development_dependency 'rainbow'

  if gem.platform.to_s == 'x86-mswin32'
    gem.add_development_dependency 'windows-pr'
    gem.add_development_dependency 'win32console'
  end
end
