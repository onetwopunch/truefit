# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{haml}
  s.version = "4.0.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Nathan Weizenbaum", "Hampton Catlin", "Norman Clarke"]
  s.date = %q{2014-01-07}
  s.default_executable = %q{haml}
  s.description = %q{Haml (HTML Abstraction Markup Language) is a layer on top of HTML or XML that's
designed to express the structure of documents in a non-repetitive, elegant, and
easy way by using indentation rather than closing tags and allowing Ruby to be
embedded with ease. It was originally envisioned as a plugin for Ruby on Rails,
but it can function as a stand-alone templating engine.
}
  s.email = ["haml@googlegroups.com", "norman@njclarke.com"]
  s.executables = ["haml"]
  s.files = ["test/engine_test.rb", "test/filters_test.rb", "test/helper_test.rb", "test/parser_test.rb", "test/template_test.rb", "test/util_test.rb", "bin/haml"]
  s.homepage = %q{http://haml.info/}
  s.licenses = ["MIT"]
  s.post_install_message = %q{
HEADS UP! Haml 4.0 has many improvements, but also has changes that may break
your application:

* Support for Ruby 1.8.6 dropped
* Support for Rails 2 dropped
* Sass filter now always outputs <style> tags
* Data attributes are now hyphenated, not underscored
* html2haml utility moved to the html2haml gem
* Textile and Maruku filters moved to the haml-contrib gem

For more info see:

http://rubydoc.info/github/haml/haml/file/CHANGELOG.md

}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.6.2}
  s.summary = %q{An elegant, structured (X)HTML/XML templating engine.}
  s.test_files = ["test/engine_test.rb", "test/filters_test.rb", "test/helper_test.rb", "test/parser_test.rb", "test/template_test.rb", "test/util_test.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<tilt>, [">= 0"])
      s.add_development_dependency(%q<rails>, [">= 3.0.0"])
      s.add_development_dependency(%q<rbench>, [">= 0"])
      s.add_development_dependency(%q<minitest>, [">= 0"])
      s.add_development_dependency(%q<nokogiri>, ["~> 1.5.10"])
    else
      s.add_dependency(%q<tilt>, [">= 0"])
      s.add_dependency(%q<rails>, [">= 3.0.0"])
      s.add_dependency(%q<rbench>, [">= 0"])
      s.add_dependency(%q<minitest>, [">= 0"])
      s.add_dependency(%q<nokogiri>, ["~> 1.5.10"])
    end
  else
    s.add_dependency(%q<tilt>, [">= 0"])
    s.add_dependency(%q<rails>, [">= 3.0.0"])
    s.add_dependency(%q<rbench>, [">= 0"])
    s.add_dependency(%q<minitest>, [">= 0"])
    s.add_dependency(%q<nokogiri>, ["~> 1.5.10"])
  end
end
