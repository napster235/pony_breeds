# frozen_string_literal: true

require 'pony/breeds/read_pony_data'

module Pony
  module Breeds
    RSpec.describe ReadPonyData do
      it 'has a version number' do
        expect(Pony::Breeds::VERSION).not_to be nil
      end
    end
  end
end
