class VideosController < ApplicationController

  # POST /videos
  # POST /videos.json
  def create
    @video = Video.new(params[:video])
    @video.user = current_user
    @video.videoId = @video.url[/v=([^&]+)/, 1]
    respond_to do |format|
      if @video.save
        format.html { redirect_to @video, notice: 'Cadastro com sucesso.' }
        format.json { render json: @video, status: :created, location: @video }
      else
        format.html { render action: "new" }
        format.json { render json: @video.errors, status: :unprocessable_entity }
      end
    end
  end

  # GET /video/1
  # GET /video/1.json
  def show
    @video = Video.find(params[:id])
    

    if user_signed_in?
      @flag = Flag.new
      @user_owner = current_user.videos.exists? @video
    end

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @video }
    end
  end

end
