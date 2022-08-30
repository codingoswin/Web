require 'sinatra/base'

class Application < Sinatra::Base 
    get '/' do
        return 'Hello!'
    end

    get '/posts' do
        return 'A list of posts'
    end

    get '/hello' do
        name = params[:name]
       
        return "Hello #{name}"
    end

    post '/posts' do
        return 'Post was created'
    end
end