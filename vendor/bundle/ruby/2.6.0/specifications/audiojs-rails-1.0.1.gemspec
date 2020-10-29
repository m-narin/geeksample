# -*- encoding: utf-8 -*-
# stub: audiojs-rails 1.0.1 ruby lib

Gem::Specification.new do |s|
  s.name = "audiojs-rails".freeze
  s.version = "1.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Alif Rachmawadi".freeze]
  s.date = "2014-11-12"
  s.description = "Audio.js on Rails Asset Pipeline".freeze
  s.email = ["subosito@gmail.com".freeze]
  s.homepage = "https://github.com/subosito/audiojs-rails".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.0.3".freeze
  s.summary = "audio.js is a drop-in javascript library that allows HTML5's <audio> tag to be used anywhere.".freeze

  s.installed_by_version = "3.0.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<railties>.freeze, [">= 3.1"])
      s.add_development_dependency(%q<vendorer>.freeze, [">= 0"])
      s.add_development_dependency(%q<tzinfo>.freeze, [">= 0"])
      s.add_development_dependency(%q<sprockets-rails>.freeze, [">= 0"])
    else
      s.add_dependency(%q<railties>.freeze, [">= 3.1"])
      s.add_dependency(%q<vendorer>.freeze, [">= 0"])
      s.add_dependency(%q<tzinfo>.freeze, [">= 0"])
      s.add_dependency(%q<sprockets-rails>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<railties>.freeze, [">= 3.1"])
    s.add_dependency(%q<vendorer>.freeze, [">= 0"])
    s.add_dependency(%q<tzinfo>.freeze, [">= 0"])
    s.add_dependency(%q<sprockets-rails>.freeze, [">= 0"])
  end
end
