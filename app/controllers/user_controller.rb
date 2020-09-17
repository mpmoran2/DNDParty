class UserController < ApplicationController
    
    #sign up
    get '/signup' do
        erb :'users/signup'
    end 

    post '/signup' do
        
        user = User.new(username: params[:username], password_digest: params[:password])
        if user.username.empty? || user.password_digest.empty?
            @error = "No fields can be blank."
            erb :'users/signup'
        elsif User.find_by(username: user.username)
            @error = "Username taken. Please try again"
            erb :'users/signup'
        else
            user.save
            session[:user_id] = user.id
            redirect '/characters'
        end
    end

    #delet account     
    
end