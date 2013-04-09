class FlagsController < ApplicationController

  # POST /flags
  # POST /flags.json
  def create

  	
    @flag = Flag.new(params[:flag])
    
  	if @flag.save
    	render json: { flag: @flag }, status: :created
    else
     	render json: @flag.errors, status: :unprocessable_entity 
  	end
  end

end

