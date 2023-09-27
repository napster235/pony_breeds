# frozen_string_literal: true

require 'json'
require 'active_support/core_ext/hash/keys'

module Pony
  module Breeds
    # The ReadPonyData class provides a way to read the pony data from the stored json file
    class ReadPonyData
      # Get data related to a pony by JSON key
      #
      # @param key [Symbol] the symbolized key used to retrieve data for a specific pony
      #
      # @return [Hash] the hash containing the data for the pony
      def get_pony_by_key(key)
        read_ponies[key.to_sym]
      end

      # Get data related to a pony by the actual name of the pony
      #
      # @param name [String] the actual name of the pony
      #
      # @return [Hash] the hash containing the data for the pony
      def get_pony_name(name)
        key = name&.split&.join('_')&.downcase
        get_pony_by_key(key)
      end

      private

      # Read and parse the JSON file
      #
      # @return [Hash] the data from the json file
      def read_ponies
        file_location = File.dirname(__FILE__)
        load_pony_breeds = File.join(file_location, 'pony_breeds.json')
        JSON.parse(File.read(load_pony_breeds)).deep_symbolize_keys
      end
    end
  end
end
1
