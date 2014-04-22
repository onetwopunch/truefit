# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{mime-types}
  s.version = "1.25.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Austin Ziegler"]
  s.cert_chain = ["-----BEGIN CERTIFICATE-----\nMIIDNjCCAh6gAwIBAgIBADANBgkqhkiG9w0BAQUFADBBMQ8wDQYDVQQDDAZhdXN0\naW4xGTAXBgoJkiaJk/IsZAEZFglydWJ5Zm9yZ2UxEzARBgoJkiaJk/IsZAEZFgNv\ncmcwHhcNMTMwMjA0MDMzMzI3WhcNMTQwMjA0MDMzMzI3WjBBMQ8wDQYDVQQDDAZh\ndXN0aW4xGTAXBgoJkiaJk/IsZAEZFglydWJ5Zm9yZ2UxEzARBgoJkiaJk/IsZAEZ\nFgNvcmcwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQC2mPNf4L37GhKI\nSPCYsvYWXA2/R9u5+pyUnbJ2R1o2CiRq2ZA/AIzY6N3hGnsgoWnh5RzvgTN1Lt08\nDNIrsIG2VDYk/JVt6f9J6zZ8EQHbznWa3cWYoCFaaICdk7jV1n/42hg70jEDYXl9\ngDOl0k6JmyF/rtfFu/OIkFGWeFYIuFHvRuLyUbw66+QDTOzKb3t8o55Ihgy1GVwT\ni6pkDs8LhZWXdOD+921l2Z1NZGZa9KNbJIg6vtgYKU98jQ5qr9iY3ikBAspHrFas\nK6USvGgAg8fCD5YiotBEvCBMYtfqmfrhpdU2p+gvTgeLW1Kaevwqd7ngQmFUrFG1\neUJSURv5AgMBAAGjOTA3MAkGA1UdEwQCMAAwHQYDVR0OBBYEFAtJKMp6YYNqlgR3\n9TiZLWqvLagSMAsGA1UdDwQEAwIEsDANBgkqhkiG9w0BAQUFAAOCAQEApTPkvDm8\n7gJlUT4FfumXPvtuqP67LxUtGE8syvR0A4As+0P/wylLJFUOsGTTdZYtThhxCSJG\n+7KG2FfIcH4Zz2d97arZGAzBoi8iPht2/UtSl1fCcUI5vmJa1MiXZT2oqdW7Wydq\nrAZcBPlrYYuiwtGI0yqIOgBfXSZCWWsJsuyTKELep6mCLgz0YZUfmvKr8W/Ab3ax\nDuLzH92LSRjZJyjyAUpw/Vc2rM4giiP5jtByrb1Y1dGnQhHTMHf1GfucWm7Nw/V9\ntwEPVw8+0f88JQucxOTmTF1NbLFpiRwQUZ1zoZbNg2e7mShc/eexnVLWKFKxRoP6\nKPj3WoD+spB8fA==\n-----END CERTIFICATE-----\n"]
  s.date = %q{2013-11-24}
  s.description = %q{This library allows for the identification of a file's likely MIME content
type. This is release 1.25.1, fixing an issue with priority comparison for
mime-types 1.x. The current release is 2.0, which only supports Ruby 1.9 or
later.

Release 1.25.1 contains all features of 1.25, including the experimental
caching and lazy loading functionality. The caching and lazy loading features
were initially implemented by Greg Brockman (gdb). As these features are
experimental, they are disabled by default and must be enabled through the use
of environment variables. The cache is invalidated on a per-version basis; the
cache for version 1.25 will not be reused for any later version.

To use lazy loading, set the environment variable +RUBY_MIME_TYPES_LAZY_LOAD+
to any value other than 'false'. When using lazy loading, the initial startup
of MIME::Types is around 12–25× faster than normal startup (on my system,
normal startup is about 90 ms; lazy startup is about 4 ms). This isn't
generally useful, however, as the MIME::Types database has not been loaded.
Lazy startup and load is just *slightly* faster—around 1 ms. The real advantage
comes from using the cache.

To enable the cache, set the environment variable +RUBY_MIME_TYPES_CACHE+ to a
filename where MIME::Types will have read-write access. The first time a new
version of MIME::Types is run using this file, it will be created, taking a
little longer than normal. Subsequent loads using the same cache file will be
approximately 3½× faster (25 ms) than normal loads. This can be combined with
+RUBY_MIME_TYPES_LAZY_LOAD+, but this is *not* recommended in a multithreaded
or multiprocess environment where all threads or processes will be using the
same cache file.

As the caching interface is still experimental, the only values cached are the
default MIME::Types database, not any custom MIME::Types added by users.

MIME types are used in MIME-compliant communications, as in e-mail or HTTP
traffic, to indicate the type of content which is transmitted. MIME::Types
provides the ability for detailed information about MIME entities (provided as
a set of MIME::Type objects) to be determined and used programmatically. There
are many types defined by RFCs and vendors, so the list is long but not
complete; don't hesitate to ask to add additional information. This library
follows the IANA collection of MIME types (see below for reference).

MIME::Types for Ruby was originally based on MIME::Types for Perl by Mark
Overmeer, copyright 2001 - 2009.

MIME::Types is built to conform to the MIME types of RFCs 2045 and 2231. It
tracks the {IANA registry}[http://www.iana.org/assignments/media-types/]
({ftp}[ftp://ftp.iana.org/assignments/media-types]) with some unofficial types
added from the {LTSW collection}[http://www.ltsw.se/knbase/internet/mime.htp]
and added by the users of MIME::Types.}
  s.email = ["austin@rubyforge.org"]
  s.files = ["test/test_mime_type.rb", "test/test_mime_types.rb", "test/test_mime_types_cache.rb", "test/test_mime_types_lazy.rb"]
  s.homepage = %q{http://mime-types.rubyforge.org/}
  s.licenses = ["MIT", "Artistic 2.0", "GPL-2"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{mime-types}
  s.rubygems_version = %q{1.6.2}
  s.summary = %q{This library allows for the identification of a file's likely MIME content type}
  s.test_files = ["test/test_mime_type.rb", "test/test_mime_types.rb", "test/test_mime_types_cache.rb", "test/test_mime_types_lazy.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rubyforge>, [">= 2.0.4"])
      s.add_development_dependency(%q<minitest>, ["~> 5.0"])
      s.add_development_dependency(%q<rdoc>, ["~> 4.0"])
      s.add_development_dependency(%q<hoe-bundler>, ["~> 1.2"])
      s.add_development_dependency(%q<hoe-doofus>, ["~> 1.0"])
      s.add_development_dependency(%q<hoe-gemspec2>, ["~> 1.1"])
      s.add_development_dependency(%q<hoe-git>, ["~> 1.5"])
      s.add_development_dependency(%q<hoe-rubygems>, ["~> 1.0"])
      s.add_development_dependency(%q<hoe-travis>, ["~> 1.2"])
      s.add_development_dependency(%q<rake>, ["~> 10.0"])
      s.add_development_dependency(%q<hoe>, ["~> 3.7"])
    else
      s.add_dependency(%q<rubyforge>, [">= 2.0.4"])
      s.add_dependency(%q<minitest>, ["~> 5.0"])
      s.add_dependency(%q<rdoc>, ["~> 4.0"])
      s.add_dependency(%q<hoe-bundler>, ["~> 1.2"])
      s.add_dependency(%q<hoe-doofus>, ["~> 1.0"])
      s.add_dependency(%q<hoe-gemspec2>, ["~> 1.1"])
      s.add_dependency(%q<hoe-git>, ["~> 1.5"])
      s.add_dependency(%q<hoe-rubygems>, ["~> 1.0"])
      s.add_dependency(%q<hoe-travis>, ["~> 1.2"])
      s.add_dependency(%q<rake>, ["~> 10.0"])
      s.add_dependency(%q<hoe>, ["~> 3.7"])
    end
  else
    s.add_dependency(%q<rubyforge>, [">= 2.0.4"])
    s.add_dependency(%q<minitest>, ["~> 5.0"])
    s.add_dependency(%q<rdoc>, ["~> 4.0"])
    s.add_dependency(%q<hoe-bundler>, ["~> 1.2"])
    s.add_dependency(%q<hoe-doofus>, ["~> 1.0"])
    s.add_dependency(%q<hoe-gemspec2>, ["~> 1.1"])
    s.add_dependency(%q<hoe-git>, ["~> 1.5"])
    s.add_dependency(%q<hoe-rubygems>, ["~> 1.0"])
    s.add_dependency(%q<hoe-travis>, ["~> 1.2"])
    s.add_dependency(%q<rake>, ["~> 10.0"])
    s.add_dependency(%q<hoe>, ["~> 3.7"])
  end
end
