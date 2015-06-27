Gem::Specification.new do |gem|
  gem.name        = 'refunge'
  gem.version     = '0.0.0'
  gem.date        = '2015-06-27'
  gem.summary     = "A Befunge-93 interpreter built in Ruby"
  gem.description = "A Befunge-93 interpreter built in Ruby"
  gem.authors     = ["Gene Doyel"]
  gem.email       = ["genedoyel@gmail.com"]
  gem.files       = `git ls-files`.split($/)

  gem.add_development_dependency "pry"
  gem.add_development_dependency "rspec"
  gem.add_development_dependency "rake"

  gem.test_files    = Dir.glob("spec/**/*_spec.rb")

  gem.license     = "MIT"
end
