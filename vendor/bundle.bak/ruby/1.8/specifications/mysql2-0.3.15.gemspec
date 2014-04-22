# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{mysql2}
  s.version = "0.3.15"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Brian Lopez"]
  s.date = %q{2014-01-23}
  s.email = %q{seniorlopez@gmail.com}
  s.extensions = ["ext/mysql2/extconf.rb"]
  s.files = ["examples/eventmachine.rb", "examples/threaded.rb", "spec/configuration.yml.example", "spec/em/em_spec.rb", "spec/my.cnf.example", "spec/mysql2/client_spec.rb", "spec/mysql2/error_spec.rb", "spec/mysql2/result_spec.rb", "spec/rcov.opts", "spec/spec_helper.rb", "spec/test_data", "ext/mysql2/extconf.rb"]
  s.homepage = %q{http://github.com/brianmario/mysql2}
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.6.2}
  s.summary = %q{A simple, fast Mysql library for Ruby, binding to libmysql}
  s.test_files = ["examples/eventmachine.rb", "examples/threaded.rb", "spec/configuration.yml.example", "spec/em/em_spec.rb", "spec/my.cnf.example", "spec/mysql2/client_spec.rb", "spec/mysql2/error_spec.rb", "spec/mysql2/result_spec.rb", "spec/rcov.opts", "spec/spec_helper.rb", "spec/test_data"]

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<eventmachine>, [">= 0"])
      s.add_development_dependency(%q<rake-compiler>, ["~> 0.8.1"])
      s.add_development_dependency(%q<rake>, ["~> 0.9.3"])
      s.add_development_dependency(%q<rspec>, ["~> 2.8.0"])
    else
      s.add_dependency(%q<eventmachine>, [">= 0"])
      s.add_dependency(%q<rake-compiler>, ["~> 0.8.1"])
      s.add_dependency(%q<rake>, ["~> 0.9.3"])
      s.add_dependency(%q<rspec>, ["~> 2.8.0"])
    end
  else
    s.add_dependency(%q<eventmachine>, [">= 0"])
    s.add_dependency(%q<rake-compiler>, ["~> 0.8.1"])
    s.add_dependency(%q<rake>, ["~> 0.9.3"])
    s.add_dependency(%q<rspec>, ["~> 2.8.0"])
  end
end
