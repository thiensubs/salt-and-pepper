# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "salt-and-pepper/version"

Gem::Specification.new do |s|
	s.name        = "salt-and-pepper"
	s.version     = SaltPepper::VERSION
	s.platform    = Gem::Platform::RUBY
	s.authors     = ["Mate Solymosi"]
	s.email       = ["mate@solymosi.eu"]
	s.homepage    = "http://github.com/SMWEB/salt-and-pepper"
	s.summary     = %q{Easy password salting and hashing for ActiveRecord}
	s.description = %q{Easy password salting and hashing for ActiveRecord}

	s.rubyforge_project = "salt-and-pepper"

	s.files         = `git ls-files`.split("\n")
	s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
	s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
	s.require_paths = ["lib"]

	s.add_dependency("activesupport", ">= 3.0.0")
	s.add_dependency("activerecord", ">= 3.0.0")
	s.add_dependency("rspec")
	s.add_dependency("sqlite3")
end