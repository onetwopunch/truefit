# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{jbuilder}
  s.version = "1.5.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["David Heinemeier Hansson"]
  s.date = %q{2013-12-03}
  s.email = %q{david@37signals.com}
  s.files = ["test/jbuilder_generator_test.rb", "test/jbuilder_template_test.rb", "test/jbuilder_test.rb", "test/scaffold_controller_generator_test.rb"]
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.6.2}
  s.summary = %q{Create JSON structures via a Builder-style DSL}
  s.test_files = ["test/jbuilder_generator_test.rb", "test/jbuilder_template_test.rb", "test/jbuilder_test.rb", "test/scaffold_controller_generator_test.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activesupport>, [">= 3.0.0"])
      s.add_runtime_dependency(%q<multi_json>, [">= 1.2.0"])
    else
      s.add_dependency(%q<activesupport>, [">= 3.0.0"])
      s.add_dependency(%q<multi_json>, [">= 1.2.0"])
    end
  else
    s.add_dependency(%q<activesupport>, [">= 3.0.0"])
    s.add_dependency(%q<multi_json>, [">= 1.2.0"])
  end
end
