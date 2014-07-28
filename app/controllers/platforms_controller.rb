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
    if @platform.save
      redirect_to @platform, notice: 'Platform was successfully created.'
    else
      render :new
    end
  end

  def update
    if @platform.update(platform_params.permit(:name, :url))
      redirect_to @platform, notice: 'Platform was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @platform.destroy
    redirect_to platforms_url, notice: 'Platform was successfully destroyed.'
  end

  def show_banner
    platform = Platform.find_by(:token => params[:token])
    result = Banner.select_for_showing(platform)
    if result
      result.views += 1
      render html: "#{result.banner_partner_code}".html_safe
    else # All banners was showing more than max time
      render html: "<strong>No banners available for showing</strong>".html_safe
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
