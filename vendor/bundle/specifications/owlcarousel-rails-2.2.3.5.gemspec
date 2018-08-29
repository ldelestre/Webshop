# -*- encoding: utf-8 -*-
# stub: owlcarousel-rails 2.2.3.5 ruby lib

Gem::Specification.new do |s|
  s.name = "owlcarousel-rails".freeze
  s.version = "2.2.3.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["OwlFonk".freeze, "Adrian Rangel".freeze]
  s.date = "2018-05-04"
  s.description = "Owl Carousel. Touch enabled jQuery plugin that lets you create beautiful responsive carousel slider.".freeze
  s.email = ["adrian.rangel@gmail.com".freeze]
  s.homepage = "http://owlgraphic.com/owlcarousel/".freeze
  s.licenses = ["MIT".freeze]
  s.rubyforge_project = "owlcarousel-rails".freeze
  s.rubygems_version = "2.7.7".freeze
  s.summary = "Owl Carousel. Touch enabled jQuery plugin that lets you create beautiful responsive carousel slider.".freeze

  s.installed_by_version = "2.7.7" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
    else
      s.add_dependency(%q<rake>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<rake>.freeze, [">= 0"])
  end
end
