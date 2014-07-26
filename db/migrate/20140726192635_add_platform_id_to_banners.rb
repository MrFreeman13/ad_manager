class AddPlatformIdToBanners < ActiveRecord::Migration
  def change
    add_column :banners, :platform_id, :integer
  end
end
