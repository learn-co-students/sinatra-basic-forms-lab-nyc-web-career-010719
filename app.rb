require_relative 'config/environment'

class App < Sinatra::Base


  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  post '/puppy' do
    # binding.pry
    @pup = Puppy.new(params[:name],params[:breed], params[:age])
    # binding.pry
    erb :display_puppy
  end

  # get '/puppy' do
  #   erb :display_puppy
  # end



  # post '/team' do
  #   @name = params[:name]
  #   @coach = params[:coach]
  #   @pg = params[:pg]
  #   @sg = params[:sg]
  #   @pf = params[:pf]
  #   @sf = params[:sf]
  #   @c = params[:c]
  #   erb :team
  # end


end
