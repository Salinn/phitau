# -*- encoding: utf-8 -*-
# stub: fancybox-rails 0.2.1 ruby lib

Gem::Specification.new do |s|
  s.name = "fancybox-rails"
  s.version = "0.2.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Chris Mytton", "Les Hill", "Dennis Reimann"]
  s.date = "2013-03-09"
  s.description = "This gem provides jQuery FancyBox for your Rails 3.1 application."
  s.email = ["self@hecticjeff.net"]
  s.homepage = "https://github.com/hecticjeff/fancybox-rails"
  s.rubygems_version = "2.4.5"
  s.summary = "Use FancyBox with Rails 3.1+"

  s.installed_by_version = "2.4.5" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<railties>, [">= 3.1.0"])
    else
      s.add_dependency(%q<railties>, [">= 3.1.0"])
    end
  else
    s.add_dependency(%q<railties>, [">= 3.1.0"])
  end
end
