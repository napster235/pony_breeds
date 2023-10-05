# frozen_string_literal: true

require 'json'
require 'active_support/core_ext/hash/keys'
require 'breeds'

module Pony
  module Breeds
    # The ReadPonyData class provides a way to read the pony data from the stored json file
    class ReadPonyData
      # Get data related to a pony by JSON key
      #
      # @param key [Symbol] the symbolized key used to retrieve data for a specific pony
      #
      # @return [Hash] the hash containing the data for the pony
      def self.get_pony_by_key(key)
        read_ponies[key.to_sym]
      end

      # Get data related to a pony by the actual name of the pony
      #
      # @param name [String] the actual name of the pony
      #
      # @return [Hash] the hash containing the data for the pony
      def self.get_pony_by_name(name)
        return unless name.is_a?(String) && !name.empty?

        key = name.split.join('_').downcase
        get_pony_by_key(key)
      end

      # Get data related to a pony by a random JSON key
      #
      # @return [Hash] the hash containing the data for the pony
      def self.retrieve_random_pony
        arr = []

        read_ponies.each_key { |pony_name| arr << pony_name }
        get_pony_by_key(arr.sample)
      end

      # Read and parse the JSON file
      #
      # @return [Hash] the data from the json file
      def self.read_ponies
        directory = File.dirname(__FILE__)
        file_location = File.join(directory, 'pony_breeds.json')
        JSON.parse(File.read(file_location)).deep_symbolize_keys if File.exist?(file_location)
      end

      private_class_method :read_ponies
    end
  end
end
