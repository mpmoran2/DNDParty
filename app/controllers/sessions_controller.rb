class SessionsController < ApplicationController
   
    get '/login' do
        erb :'/users/login'
    end

    post '/login' do              
        if params[:username].empty? || params[:password].empty?
            @error = "Please fill in you information"
            erb :'users/login'
        else
            if user = User.find_by(username: params[:username], password_digest: params[:password])
                session[:user_id] = user.id
                redirect '/profile'
            else
                @error = "Account not found"
                erb :'users/login'
            end
        end
    end 

    get '/logout' do
        session.clear
        redirect '/'
    end

    get '/profile' do
        require_login
        erb :'users/profile'
    end 
end