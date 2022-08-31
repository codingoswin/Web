require "spec_helper"
require "rack/test"
require_relative '../../app'

describe Application do
  # This is so we can use rack-test helper methods.
  include Rack::Test::Methods

  # We need to declare the `app` value by instantiating the Application
  # class so our tests work.
  let(:app) { Application.new }
    context 'GET /artists' do
        it 'Should return the list of artists' do
          response = get('/artists')

          expected_response = 'Pixies, ABBA, Taylor Swift, Nina Simone, Kiasmos'

          expect(response.status).to eq 200
          expect(response.body).to eq expected_response
        end
    end
    context 'POST /artists' do
      it 'should create a new artist' do
        response = post(
          '/artists',
          name: 'Wild nothing',
          genre: 'Indie'
          )

        expect(response.status).to eq 200
        expect(response.body).to eq ''

        repo = ArtistRepository.new
        latest_artist = repo.all.last 

        expect(latest_artist.name).to eq 'Wild nothing'
        expect(latest_artist.genre).to eq 'Indie'
    end
  end
end
