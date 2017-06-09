require File.join(File.dirname(__FILE__), 'lib/dice/version')

Gem::Specification.new do |s|
  s.name          = 'dice'
  s.version       = Dice::VERSION
  s.licenses      = ['MIT']
  s.summary       = 'Dice'
  s.description   = 'CLI for simulating dice rolls.'
  s.authors       = ['Walerian Sobczak']
  s.email         = 'walerian.sobczak@gmail.com'
  s.files         = `git ls-files`.split("\n")
  s.executables   = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.test_files    = s.files.grep(%r{^spec/})
  s.require_paths = %w(lib)
  s.homepage      = 'https://github.com/walerian777/dice'
end
