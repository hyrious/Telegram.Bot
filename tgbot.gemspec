# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "tgbot/version"

Gem::Specification.new do |spec|
  spec.name          = "tgbot"
  spec.version       = Tgbot::VERSION
  spec.authors       = ["hyrious"]
  spec.email         = ["hyrious@outlook.com"]

  spec.summary       = 'Telegram Bot API'
  spec.description   = 'A deadly simple Telegram Bot API wrapper.'
  spec.homepage      = 'https://github.com/hyrious/tgbot'
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"

  spec.add_dependency 'http'
  spec.add_dependency 'mimemagic'
  spec.required_ruby_version = '>= 2.6.0'
end
