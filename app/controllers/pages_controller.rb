class PagesController < ApplicationController

  def index
  end
  
  def dead_volume
    @object = Object.new
  end
  
  def calculate
    @object = params.inspect
    
  end
end
