class PagesController < ApplicationController
  def home
  	@video = Video.new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @video }
    end  	
  end

  def example
  end
end
