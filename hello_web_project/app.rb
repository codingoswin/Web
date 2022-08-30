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

    post '/submit' do
        name = params[:name]
        message = params[:message]
        return "Thanks #{name}, you sent this message:#{message} "
    end

    get '/names' do
        names = params[:names]        
    end

    post '/sort-names' do
        names = params[:names]
        return names.split(',').sort.join(',')
    end
end