class Weather


  attr_accessor :temperature

def wynweather
    HTTParty.get("http://api.wunderground.com/api/08bc75a198632371/hourly/q/33137.xml")
 end



def initialize
  weather = wynweather
  assign_values(weather)
end

def assign_values(weather)
      hourly = weather.parsed_response['response']['hourly_forecast']['forecast'].first
      self.temperature = hourly['temp']['english']

 end

end