# -*- encoding: utf-8 -*-
# stub: ImageResize 0.0.5 ruby lib

Gem::Specification.new do |s|
  s.name = "ImageResize"
  s.version = "0.0.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Sho Hashimoto"]
  s.date = "2010-06-27"
  s.description = "Simple image resize library without external program."
  s.email = ["hashimoto@shokai.org"]
  s.extra_rdoc_files = ["History.txt", "Manifest.txt"]
  s.files = ["History.txt", "Manifest.txt"]
  s.homepage = "http://github.com/shokai/ImageResize-ruby"
  s.post_install_message = "PostInstall.txt"
  s.rdoc_options = ["--main", "README.rdoc"]
  s.rubyforge_project = "ImageResize"
  s.rubygems_version = "2.2.2"
  s.summary = "Simple image resize library without external program."

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rubyforge>, [">= 2.0.4"])
      s.add_development_dependency(%q<hoe>, [">= 2.6.1"])
    else
      s.add_dependency(%q<rubyforge>, [">= 2.0.4"])
      s.add_dependency(%q<hoe>, [">= 2.6.1"])
    end
  else
    s.add_dependency(%q<rubyforge>, [">= 2.0.4"])
    s.add_dependency(%q<hoe>, [">= 2.6.1"])
  end
end
