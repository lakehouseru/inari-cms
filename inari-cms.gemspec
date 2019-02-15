$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "inari/cms/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "inari-cms"
  s.version     = Inari::Cms::VERSION
  s.authors     = ["Denis Ivanov"]
  s.email       = ["info@lakehouse.ru"]
  s.homepage    = "http://lakehouse.ru"
  s.summary     = "Ruby on Rails CMS based on Administrate gem"
  s.description = "http://lakehouse.ru"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.0"
  s.add_dependency "ckeditor"
  s.add_dependency "russian"
  s.add_dependency "administrate"
  s.add_dependency "devise"
  s.add_dependency "devise-i18n"
  s.add_dependency "devise-i18n-views"
  s.add_dependency "pundit"
  s.add_dependency "paranoia", "~> 2.2"
  s.add_dependency "paper_trail"
  s.add_dependency "simple_form"
  s.add_dependency "slim"
  s.add_dependency "axlsx"
  s.add_dependency "awesome_nested_set"
  s.add_dependency "the_sortable_tree"
  s.add_dependency "font-awesome-rails"
  s.add_dependency "jquery-rails"
  s.add_dependency "jquery-ui-rails"
  s.add_dependency "rails_sortable"
  s.add_dependency "kaminari"
  s.add_dependency "meta-tags"
  s.add_dependency "carrierwave"
  s.add_dependency "mini_magick"
  s.add_dependency "administrate-field-date_picker"
  s.add_dependency "pg_search"
  s.add_dependency "administrate-field-password"
  s.add_dependency "friendly_id"  
  s.add_dependency "babosa"


  s.add_development_dependency "pg"
end
