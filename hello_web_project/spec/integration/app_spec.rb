require 'spec_helper'
require 'rack/test'
require_relative '../../app'

RSpec.describe Application do
    include Rack::Test::Methods
    # We need to declare the `app` value by instantiating the Application
    # class so our tests work.
    let(:app) { Application.new }

    it 'Sorts names alphabetically' do
        response = post('/sort-names', names: 'Joe,Alice,Zoe,Julia,Kieran')

        expect(response.status).to eq 200
        expect(response.body).to eq 'Alice,Joe,Julia,Kieran,Zoe'
    end

    it 'contains a h1 tag with Hello!' do
        response = get('/hello') 

        expect(response.body).to include('<h1>Hello!</h1>')
    end

end