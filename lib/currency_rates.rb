require 'sinatra/base'
require 'json'

module CurrencyRates
  class App < Sinatra::Base
    get '/' do
      codes = [
        {:code => 'USD', :rate => 1.0},
        {:code => 'EUR', :rate => 0.79521}
      ]

      status 200 
      headers 'Content-Type' => 'application/json'
      body JSON codes
    end
  end
end