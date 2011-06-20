class PagesController < ApplicationController

  def index
  end
  
  def dead_volume
    @object = Object.new
  end
  
  def calculate(hash)
    hash.inspect
    
  end
end
