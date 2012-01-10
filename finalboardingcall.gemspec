# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "finalboardingcall/version"

Gem::Specification.new do |s|
  s.name        = "finalboardingcall"
  s.version     = Finalboardingcall::VERSION
  s.authors     = ["Rafe Hatfield"]
  s.email       = ["rafe.hatfield@suite101.com"]
  s.homepage    = "https://github.com/RafeHatfield/Final-Boarding-Call"
  s.summary     = %q{Simple rack middleware app for doing a last check on 404 error requests to see if they should be redirected to a correct URL'}
  s.description = %q{Final Boarding Call gives the request a last chance on error to be redirected (for example, by 301) to a working  URL.  It was originally built to maintain a redirection system of over a million 301 entries, allowing us to remove the logic from our application and into a model of URL mappings that is checked as a last resort on any 404 request.}

  s.rubyforge_project = "finalboardingcall"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end
