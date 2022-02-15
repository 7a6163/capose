lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = 'capose'
  spec.version       = '0.3.0'
  spec.authors       = ['Jacek Jakubik']
  spec.email         = ['jacek.jakubik@netguru.pl']
  spec.description   = 'Docker-Compose support for Capistrano 3.x'
  spec.summary       = 'Docker-Compose support for Capistrano 3.x'
  spec.homepage      = 'https://github.com/netguru/capose'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($INPUT_RECORD_SEPARATOR)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'capistrano', '~> 3.7'
  spec.add_development_dependency 'bundler', '~> 1.4'
end
