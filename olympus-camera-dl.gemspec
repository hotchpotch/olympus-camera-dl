Gem::Specification.new do |spec|
  spec.name = "olympus-camera-dl"
  spec.version = "0.1.0"
  spec.authors = ["Yuichi Tateno"]
  spec.email = ["hotchpotch@gmail.com"]

  spec.summary = %q{cli tool that download images from olympus camera}
  spec.description = spec.summary
  spec.homepage = "https://github.com/hotchpotch/olympus-camera-dl"
  spec.license = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.5.0")

  #  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  #  spec.metadata["source_code_uri"] = "TODO: Put your gem's public repo URL here."
  #  spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path("..", __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "olympus-camera", "~> 0.1"
end
