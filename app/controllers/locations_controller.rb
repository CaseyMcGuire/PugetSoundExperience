class LocationsController < ApplicationController
  layout "page"
  respond_to :json
  #information on the current location
  def info
    @location = Location.find(params[:id])
    session[:previous] = @location.id
  end
  
  #menu view
  def menu
    session.clear
    @locations = Location.all
  end
  
  #shows current location on map
  def map
    
    @location = Location.find(params[:id])

    if session[:previous] == nil
      @previous_location = nil
    else
      @previous_location = Location.find(session[:previous].to_s.to_sym)
    end

    session[:previous] = @location.id

    @all_locations = Location.all
    #session.clear
  end
end
