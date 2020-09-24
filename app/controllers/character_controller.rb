class CharacterController < ApplicationController
    before do
        require_login
    end 
    #Create
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
    #Render
    get '/characters' do
        @characters = Character.all.reverse
        erb :'characters/index'
    end
         
    get '/characters/:id' do 
        @character = Character.find(params[:id])
        erb :'characters/show'   
    end  

    get '/world_characters' do 
        @characters = Character.all.reverse
        erb :'characters/all'
    end 
   #update
    get '/characters/:id/edit' do        
        @character = Character.find(params[:id])
        erb :'/characters/edit'      
    end

    patch '/characters/:id' do
        character = Character.find(params[:id])
        if !params["character"]["name"].empty? && !params["character"]["race"].empty? && !params["character"]["job"].empty?
            character.update(params[:character])     
            redirect "/characters/#{params[:id]}"                                      
        else
            @error = "Form not completed. Please fill out the minimum: Name, Race, and Job"
            erb :'/characters/edit'
        end
    end

#delete
    delete '/characters/:id' do
        character = Character.find(params[:id])
        character.destroy 
        redirect "/characters"
    end         
end