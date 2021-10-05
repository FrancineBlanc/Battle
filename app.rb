require "sinatra/base"

class Battle < Sinatra::Base
  get "/" do
    "Start a fight!"
  end
end