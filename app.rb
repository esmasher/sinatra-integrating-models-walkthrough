require_relative 'config/environment'
require_relative 'models/text_analyzer.rb'
class App < Sinatra::Base
  set :views, "views"

  get '/' do
    erb :index
  end


  post '/' do
    @analyzed_text = TextAnalyzer.new(params[:user_text])

    erb :views/results
  end
end
