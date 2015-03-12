lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'kinomax_parser/version'

Gem::Specification.new do |spec|
  spec.name          = "kinomax_parser"
  spec.version       = KinomaxParser::VERSION
  spec.authors       = ["Eddie Fisher"]
  spec.email         = ["eddi.fisher@gmail.com"]

  spec.summary       = %q{Parse anonce and films from kinomax}
  spec.description   = %q{Parse anonce and films from kinomax}
  spec.homepage      = "https://github.com/eddiefisher/kinomax_parser"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_runtime_dependency 'nokogiri'
  spec.add_runtime_dependency 'httpclient'
end
