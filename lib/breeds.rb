# frozen_string_literal: true

require_relative 'pony/breeds/version'

module Pony
  module Breeds
    AWS_BUCKET_URL = 'https://s3.eu-central-1.amazonaws.com/ponybreeds/pony_breeds.json'

    private_constant :AWS_BUCKET_URL

    class Error < StandardError; end
  end
end
