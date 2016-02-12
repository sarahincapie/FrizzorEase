class PagesController < ApplicationController


def home

@wynweather = Weather.new(params[:zip])


end

end
