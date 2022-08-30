require 'spec_helper'
require 'rack/test'
require_relative '../../app'

RSpec.describe Application do
    include Rack::Test::Methods
    # We need to declare the `app` value by instantiating the Application
    # class so our tests work.
    let(:app) { Application.new }

    context 'GET /names' do
        it 'returns 200 OK' do
            response = get('/names', names: 'Julia, Mary, Karim')

            expect(response.status).to eq 200
            expect(response.body).to eq 'Julia, Mary, Karim'
        end


        
    end
end 