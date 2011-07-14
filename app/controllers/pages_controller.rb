class PagesController < ApplicationController
  respond_to :json, :only => [:calculate]

  def index
  end
  
  def dead_volume
    radius = params[:diameter].to_f/2.0
    diameter_unit = params[:diameter_unit]
    length = params[:length].to_f
    length_unit = params[:length_unit]
    length = length / 39.3700787 if length_unit != 'meter'
    radius = radius / 3.93700787e-5 if diameter_unit != 'micrometer'
    @answer = (radius**2) * Math::PI * length * 1e-3
    puts "@answer = #{@answer}"
    respond_to do |format|
      format.js 
      format.html
    end
  end
end
