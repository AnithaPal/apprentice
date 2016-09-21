class HomeController < ApplicationController
  def index
  end

  def map
    gon.plucked_location = Location.pluck_to_hash([:latitude, :longitude])
  end
end
