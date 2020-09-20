class UserController < ApplicationController
    get '/signup' do
        erb :'users/signup'
    end 

    post '/signup' do
        user = User.new(params)
        if !user.save
            @error = "Account Taken or fields blank"
            erb :'users/signup'
        else
            user.save
            session[:user_id] = user.id
            redirect '/profile'
        end
    end   
end