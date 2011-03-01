# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "placekitten"
  s.version     = File.read('VERSION').strip
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Brandon Tilley"]
  s.email       = ["brandon@brandontilley.com"]
  s.homepage    = "https://github.com/BinaryMuse/placekitten"
  s.summary     = %q{A small library to generate placekitten images.}
  s.description = %q{A small library to generate placekitten images.}

  s.rubyforge_project = "placekitten"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
