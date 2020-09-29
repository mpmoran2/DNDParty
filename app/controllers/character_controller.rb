class CharacterController < ApplicationController
    before do
        require_login
    end 
    
    get '/characters/new' do         
        erb :'/characters/new'
    end 

    post '/characters' do 
        character = current_user.characters.build(params)                 
        if character.save
            redirect '/characters'                           
        else
            @error = "Form not completed. Please fill out the minimum: Name, Race, and Job"
            erb :'/characters/new'
        end
    end     
    
    get '/characters' do
        @characters = current_user.characters
        erb :'characters/index'
    end
         
    get '/characters/:id' do 
        @character = Character.find(params[:id])
        erb :'characters/show'   
    end  

    get '/world_characters' do 
        @characters = Character.all.reverse
        @user = current_user
        erb :'characters/all'
    end 
   
    get '/characters/:id/edit' do        
        @character = Character.find(params[:id])
        if @character.user && session[:user_id] == @character.user.id 
            erb :'/characters/edit'      
        else 
            @error = "Oops! You didn't create this Character. No Edit for you!"
            erb :'/characters/edit'
        end
    end

    patch '/characters/:id' do
        character = Character.find(params[:id])
        not_yours(character)
        if !params["character"]["name"].empty? && !params["character"]["race"].empty? && !params["character"]["job"].empty?
            character.update(params[:character])     
            redirect "/characters/#{params[:id]}"                                      
        else
            @error = "Form not completed. Please fill out the minimum: Name, Race, and Job"
            erb :'/characters/edit'
        end
    end

    delete '/characters/:id' do
        character = Character.find(params[:id])
        not_yours(character)
        character.destroy 
        redirect "/characters"
    end         
end