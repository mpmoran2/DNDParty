class CharacterController < ApplicationController

    #CREATE

        #new
        get '/characters/new' do 
            erb :'/characters/new'
        end 

        #Create
        post '/characters' do 
            character = Character.new(params)
            if !character.name.empty? && !character.race.empty? && !character.job.empty?
                character.save
                redirect '/characters'                           
            else
                @error = "Form not completed. Please fill out the minimum: Name, Race, and Job"
                erb :'/characters/new'
            end

        end 
        

    #READ
        get '/characters' do
            @characters = Character.all.reverse
            erb :'characters/index'
        end
         
        get '/characters/:id' do 
            @character = Character.find(params[:id])
            erb :'characters/show'
        end
        

    #UPDATE
        #edit 
        get '/characters/:id/edit' do
            @character = Character.find(params[:id])
            erb :'/characters/edit'
        end

        #update
        patch '/characters/:id' do
            character = Character.find(params[:id])
            if !params["character"]["name"].empty? && !params["character"]["race"].empty? && !params["character"]["job"].empty?
                character.update(params["character"])     
                redirect "/characters/#{params[:id]}"                                      
            else
                @error = "Form not completed. Please fill out the minimum: Name, Race, and Job"
                erb :'/characters/edit'
            end
        end

    #DESTROY
        #delete
        delete '/characters/:id' do
            character = Character.find(params[:id])
            character.destroy 
            redirect "/characters"
        end         
end