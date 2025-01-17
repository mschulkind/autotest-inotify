# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{autotest-inotify}
  s.version = "0.0.6"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Eric Wollesen"]
  s.date = %q{2011-01-12}
  s.description = %q{Autotest relies on filesystem polling to detect modifications in source code files. This is expensive for the CPU, harddrive and battery - and unnecesary on Linux with libinotify installed. This gem teaches autotest how to use libinotify.}
  s.email = %q{ericw@kill-0.com}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    "lib/autotest/inotify.rb"
  ]
  s.homepage = %q{http://kill-0.com/projects/autotest-inotify}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Teaches autotest to use libinotify (on Linux) instead of filesystem polling.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<autotest-standalone>, [">= 4.2.4"])
      s.add_runtime_dependency(%q<rb-inotify>, [">= 0"])
    else
      s.add_dependency(%q<autotest-standalone>, [">= 4.2.4"])
      s.add_dependency(%q<rb-inotify>, [">= 0"])
    end
  else
    s.add_dependency(%q<autotest-standalone>, [">= 4.2.4"])
    s.add_dependency(%q<rb-inotify>, [">= 0"])
  end
end

