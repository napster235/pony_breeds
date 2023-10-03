# frozen_string_literal: true

require 'pony/breeds/read_pony_data'
require 'json'

module Pony
  module Breeds
    RSpec.describe ReadPonyData do
      let(:response_by_key) do
        {
          name: 'American Shetland Pony',
          description: 'The American Shetland Pony is an American breed of pony.',
          wiki_url: 'https://en.wikipedia.org/wiki/American_Shetland_Pony'
        }
      end
      let(:mock_json) { 'spec/fixtures/mocked_pony_breeds.json' }

      before do
        allow(File).to receive(:read).and_return(File.read(mock_json))
      end

      describe '#get_pony_by_key' do
        context 'when passing an existing key' do
          it 'returns the object from the json file' do
            expect(Pony::Breeds::ReadPonyData.get_pony_by_key(:american_shetland_pony)).to eq(response_by_key)
          end
        end

        context 'when passing an existing stringified key' do
          it 'returns the object from the json file' do
            expect(Pony::Breeds::ReadPonyData.get_pony_by_key('american_shetland_pony')).to eq(response_by_key)
          end
        end

        context 'when passing a non existing key' do
          it 'does not return any data' do
            expect(Pony::Breeds::ReadPonyData.get_pony_by_key(:does_not_exist)).to eq(nil)
          end
        end
      end

      describe '#get_pony_by_name' do
        context 'when passing a valid name' do
          it 'returns the object from the json file' do
            expect(Pony::Breeds::ReadPonyData.get_pony_by_name('American Shetland Pony')).to eq(response_by_key)
          end
        end

        context 'when passing a non existing name' do
          it 'does not return any data' do
            expect(Pony::Breeds::ReadPonyData.get_pony_by_name('Does not exist')).to eq(nil)
          end
        end

        context 'when passing an empty name' do
          it 'does not return any data' do
            expect(Pony::Breeds::ReadPonyData.get_pony_by_name('')).to eq(nil)
          end
        end
      end

      describe '#retrieve_random_pony' do
        context 'when calling the method' do
          it 'expects the response not to be nil' do
            expect(Pony::Breeds::ReadPonyData.retrieve_random_pony).not_to be_nil
          end

          it 'expects the response size to be 3' do
            expect(Pony::Breeds::ReadPonyData.retrieve_random_pony.size).to eq(3)
          end
        end
      end
    end
  end
end
