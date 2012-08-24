require 'sinatra/base'
require 'json'

module CodingTest
  class App < Sinatra::Base
    get '/currency_codes' do
      codes = [
        {:code => 'USD', :rate => 1.0},
        {:code => 'EUR', :rate => 0.79521}
      ]

      JSON codes
    end
  end
end