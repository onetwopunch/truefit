# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{sdoc}
  s.version = "0.3.20"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6") if s.respond_to? :required_rubygems_version=
  s.authors = ["Vladimir Kolesnikov", "Nathan Broadbent"]
  s.date = %q{2012-11-21}
  s.description = %q{rdoc generator html with javascript search index.}
  s.email = %q{voloko@gmail.com}
  s.executables = ["sdoc", "sdoc-merge"]
  s.files = ["bin/sdoc", "bin/sdoc-merge"]
  s.homepage = %q{http://github.com/voloko/sdoc}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.6.2}
  s.summary = %q{rdoc html with javascript search index.}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rdoc>, ["~> 3.10"])
      s.add_runtime_dependency(%q<json>, [">= 1.1.3"])
    else
      s.add_dependency(%q<rdoc>, ["~> 3.10"])
      s.add_dependency(%q<json>, [">= 1.1.3"])
    end
  else
    s.add_dependency(%q<rdoc>, ["~> 3.10"])
    s.add_dependency(%q<json>, [">= 1.1.3"])
  end
end
