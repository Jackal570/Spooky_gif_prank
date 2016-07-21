require './config/environment'
require './app/models/model'

class ApplicationController < Sinatra::Base

# this helps connect our public and views directories
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do 
    @peaceful= "http://www.googida.com/art4ever/a0234/l01.jpg"
    @scary=  "http://www.scaryforkids.com/pics/scary-video.jpg"
    @scare1=ScaryPic.new(@peaceful, @scary)
    erb :index
  end
  
  
end