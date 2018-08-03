require './config/environment'
require './app/models/sample_model'

class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    return erb :index
  end
  
  post '/' do
    @stats1_response = params[:stats1]
    @stats2_response = params[:stats2]
    @stats3_response = params[:stats3]
    @stats4_response = params[:stats4]
    @permit_response = params[:permit]
    @cost_response = params[:cost]
    @valid_response = params[:valid]
    @reduce_response = params[:reduce]
    @defense_response = params[:defense]
    @support_response = params[:support]
    
    gun_quiz = Gun_Control.new
    @tally_array = gun_quiz.play_quiz(@stats1_response, @stats2_response, @stats3_response, @stats4_response, @permit_response, 
      @cost_response, @valid_response, @reduce_response, @defense_response,@support_response)
    @tally_events = @tally_array[0]
    @tally_law = @tally_array[1]
    @tally_stats = @tally_array[2]
      
    if (@tally_events <= 10 && @tally_law <= 10) && @tally_stats <= 20
      return erb :oregon
    elsif @tally_events <= 10 && @tally_law <= 10
      return erb :oregon
    elsif @tally_events <= 10 && @tally_stats <= 20
      return erb :oregon
    elsif @tally_stats <= 20 && @tally_law <= 10
      return erb :oregon
    elsif @tally_stats <= 20
      return erb :stats
    elsif @tally_law <= 10
      return erb :law
    elsif @tally_events <= 10 
      return erb :events
    elsif @tally_events >= 20 && @tally_law >= 20 && @tally_stats >= 30
      return erb :protests
    end 
  end 
end
