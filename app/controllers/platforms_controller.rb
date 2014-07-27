class PlatformsController < ApplicationController
  before_action :set_platform, only: [:show, :edit, :update, :destroy]

  def index
    @platforms = Platform.all
  end

  def show
  end

  def new
    @platform = Platform.new
  end


  def edit
  end

  def create
    @platform = Platform.new(platform_params.permit(:name, :url))

    respond_to do |format|
      if @platform.save
        redirect_to @platform, notice: 'Platform was successfully created.'
      else
        render :new
      end
    end
  end

  def update
    respond_to do |format|
      if @platform.update(platform_params.permit(:name, :url))
        redirect_to @platform, notice: 'Platform was successfully updated.'
      else
        render :edit
      end
    end
  end

  def destroy
    @platform.destroy
    respond_to do |format|
      redirect_to platforms_url, notice: 'Platform was successfully destroyed.'
    end
  end

  private
    def set_platform
      @platform = Platform.find(params[:id])
    end

    def platform_params
      params[:platform]
    end
end
