lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'runtime_config/version'

Gem::Specification.new do |spec|
  spec.name = 'runtime_config'
  spec.version = RuntimeConfig::VERSION

  spec.summary = 'A middleware to change configuration parameters at runtime for Rails 5'
  spec.authors = ['Mattia Roccoberton']
  spec.email = ['mat@blocknot.es']
  spec.homepage = 'https://github.com/blocknotes/runtime_config'
  spec.licenses = ['MIT']

  spec.add_dependency 'rails', ['>= 5.0', '< 6.0']

  spec.files = `git ls-files -z lib LICENSE.md README.md`.split("\0")
end