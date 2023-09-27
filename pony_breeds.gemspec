# frozen_string_literal: true

require_relative 'lib/pony/breeds/version'

Gem::Specification.new do |spec|
  spec.name = 'pony_breeds'
  spec.version = Pony::Breeds::VERSION
  spec.authors = ['napster235']
  spec.email = ['dragomir.tuddor@gmail.com']

  spec.summary = 'A small little gem that offers the capability of reading pony breeds.'
  spec.description = 'A small little gem that offers the capability of reading pony breeds.'
  spec.homepage = 'https://github.com/napster235/pony_breeds'
  spec.license = 'MIT'
  spec.required_ruby_version = '>= 2.6.0'

  spec.metadata['allowed_push_host'] = 'https://rubygems.org'

  spec.metadata['homepage_uri'] = 'https://github.com/napster235/pony_breeds'
  spec.metadata['source_code_uri'] = 'https://github.com/napster235/pony_breeds'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git .circleci appveyor Gemfile])
    end
  end

  spec.require_paths = ['lib']

  spec.add_dependency 'rails', '>= 5.2'
end
