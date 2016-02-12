class PagesController < ApplicationController


def home
    @wynweather = Weather.new
end

end
