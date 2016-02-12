class Weather


attr_accessor :temperature, :humidity, :zip

def wynweather(zip)
	p zip 
    HTTParty.get("http://api.wunderground.com/api/08bc75a198632371/hourly/q/#{zip}.xml")
 end



def initialize(zip)
  self.zip = zip
  zip = 33137 if zip.blank?
  weather_hash = wynweather(zip)
  weather = wynweather(zip)
  assign_values(weather)
end

def assign_values(weather)
      hourly = weather.parsed_response['response']['hourly_forecast']['forecast'].first
    
      self.temperature = hourly['temp']['english'] 
      self.humidity = hourly['humidity']
 end

end



 