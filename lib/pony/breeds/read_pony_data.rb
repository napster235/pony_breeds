# frozen_string_literal: true

require 'json'
require 'active_support/core_ext/hash/keys'

module Pony
  module Breeds
    # The ReadPonyData class provides a way to read the pony data from the stored json file
    class ReadPonyData
      def get_pony_by_key(key)
        read_ponies[key.to_sym]
      end

      def get_pony_name(name)
        key = name&.split&.join('_')&.downcase
        get_pony_by_key(key)
      end

      private

      def read_ponies
        file_location = File.dirname(__FILE__)
        load_pony_breeds = File.join(file_location, 'pony_breeds.json')
        JSON.parse(File.read(load_pony_breeds)).deep_symbolize_keys
      end
    end
  end
end

puts Pony::Breeds::ReadPonyData.new.get_pony_name('American Shetland Pony')
