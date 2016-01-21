class CitiesController < ApplicationController
  before_action :get_cities

  def index
    
  end

  def show
    @city = City.find(params[:id])
    
    @toilets = @city.toilets.limit(15)
    
  end

  private

  def get_cities
    @cities = City.all
  end

end