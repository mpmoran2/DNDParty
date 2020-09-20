require './config/environment'

class ApplicationController < Sinatra::Base
  configure do
    enable :sessions
    set :public_folder, 'public'
    set :views, 'app/views' 
    set :session_secret, 'password_security'
  end
  
  get "/" do
    erb :index
  end

  def logged_in?
    !!current_user
  end 

  def current_user
    User.find_by(id: session[:user_id])
  end 

  def require_login
    unless logged_in?
      redirect '/login' 
    end 
  end   
end
