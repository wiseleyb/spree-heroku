# encoding: utf-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_heroku'
  s.email       = 'joneslee85@gmail.com'
  s.version     = '2.0'
  s.summary     = 'Spree extension with tweaks for Heroku deployment'
  s.description = 'Spree extension to setup Spree on Heroku'
  s.homepage    = 'https://github.com/joneslee85/spree-heroku'
  s.required_ruby_version = '>= 1.8.7'

  s.author        = 'Casper Fabricius, Trung Lê'

  s.files        = Dir['LICENSE', 'README.md', 'app/**/*', 'config/**/*', 'lib/**/*']
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency('spree_core')
  s.add_dependency('aws-s3')
end
