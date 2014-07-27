class BannersController < ApplicationController
  before_action :set_platform
  before_action :set_banner, only: [:show, :edit, :update, :destroy]

  def index
    @banners = Banner.all
  end

  def new
    @banner = Banner.new
  end

  def edit
  end

  def create
    @banner = Banner.new(banner_params.permit(:name, :code, :partner_url, :max_views))
    @banner.platform = @platform

    if @banner.save
      redirect_to platform_banner_path(@platform, @banner), notice: 'Banner was successfully created.'
    else
      render :new
    end
  end

  def update
    if @banner.update(banner_params.permit(:name, :code, :partner_url, :max_views))
      redirect_to platform_banner_path(@platform, @banner), notice: 'Banner was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @banner.destroy
    redirect_to banners_url, notice: 'Banner was successfully destroyed.'
  end

  private
    def set_banner
      @banner = Banner.find(params[:id])
    end

    def set_platform
      @platform = Platform.find(params[:platform_id])
    end

    def banner_params
      params[:banner]
    end
end
