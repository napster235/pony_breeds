# frozen_string_literal: true

require 'json'
require 'active_support/core_ext/hash/keys'

# Pony breeds module
module PonyBreeds
  def self.get_pony_by_key(key)
    read_ponies[key.to_sym]
  end

  def self.get_pony_name(name)
    key = name.split.join('_').downcase
    get_pony_by_key(key)
  end

  def self.read_ponies
    file_location = File.dirname(__FILE__)
    load_pony_breeds = File.join(file_location, 'pony_breeds.json')
    JSON.parse(File.read(load_pony_breeds)).deep_symbolize_keys
  end
end

puts PonyBreeds.get_pony_name('American Shetland Pony')
