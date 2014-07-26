class AddIndexesToBanners < ActiveRecord::Migration
  def change
    add_index :banners, :views
    add_index :banners, :max_views
    add_index :banners, :clicks
  end
end
