Gem::Specification.new do |s|
  s.name          = 'test_gem'
  s.version       = TestGem::VERSION
  s.authors       = ['morizyun']
  s.email         = ['merii.ken@gmail.com']
  s.summary       = %q{TODO: Write a gem summary}
  s.description   = %q{TODO: Write a gem description}
  s.homepage      = 'http://morizyun.github.io'
  s.license       = 'MIT'
  s.files         = `git ls-files -z`.split("\x0")
  s.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  s.require_paths = ['lib']
  s.add_development_dependency 'bundler', '~> 1.7'
  s.add_development_dependency 'rake', '~> 10.0'
  s.add_development_dependency 'rspec'
end
