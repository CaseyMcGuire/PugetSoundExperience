class LocationsController < ApplicationController
  layout "page"
  
  respond_to :json
  #information on the current location
  def info
    session[:prev_cur] = session[:previous]
    @location = Location.find(params[:id])
    session[:previous] = @location.id
  end
  
  #menu view
  def menu
    session[:previous] = session[:prev_cur]
    @locations = Location.all
  end

  #if the user comes to the site from the 
  #main menu
  def start
    session.clear
    session[:visited] = []
    redirect_to tour_path
  end
  
  #shows current location on map
  def map
    
    @location = Location.find(params[:id])
    
    #If we have a previous location, draw a path from it.
    if session[:previous] == nil
      @previous_location = nil
    else
      @previous_location = Location.find(session[:previous].to_s.to_sym)
    end

    @visited_locations = []
    
    
    session[:visited].each do |i|
      @visited_locations << i
    end

    
    if @previous_location != nil and !session[:visited].include?(@previous_location.id)
        session[:visited] << @previous_location.id.to_i - 1 #minus 1 because databases start at 1 but arrays start at 0
    end
    
    #store the previous 
    session[:prev_cur] = session[:previous]
    session[:previous] = @location.id
    
    @all_locations = Location.all
    
    #session.clear
  end
end
