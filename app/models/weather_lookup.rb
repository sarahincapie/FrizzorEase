class WeatherLookup 

 attr_accessor :temperature

def fetch_weather
    HTTParty.get("http://api.wunderground.com/api/08bc75a198632371/hourly/q/33137.xml")
 end



def initialize
  weather_hash = fetch_weather
  assign_values(weather_hash)
end

def assign_values(weather_hash)
      hourly_forecast_response = weather_hash.parsed_response['response']['hourly_forecast']['forecast'].first
      self.temperature = hourly_forecast_response['temp']['english']
      
 end

end