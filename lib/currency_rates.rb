require 'sinatra/base'
require 'json'

module CurrencyRates
  class App < Sinatra::Base
    get '/' do
      codes = [
        {:code => 'USD', :rate => 1.0},
        {:code => 'EUR', :rate => 0.79920},
        {:code => 'INR', :rate => 55.4900},
        {:code => 'AUD', :rate => 0.96066},
        {:code => 'CAD', :rate => 0.99170},
        {:code => 'ZAR', :rate => 8.38950},
        {:code => 'NZD', :rate => 1.23267},
        {:code => 'JPY', :rate => 78.6750}
      ]

      status 200 
      headers 'Content-Type' => 'application/json'
      body JSON codes
    end
  end
end