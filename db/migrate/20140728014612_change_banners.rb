class ChangeBanners < ActiveRecord::Migration
  def up
    change_column :banners, :clicks, :integer, :default => 0
    change_column :banners, :views, :integer, :default => 0
    change_column :banners, :max_views, :integer, :default => 0
  end

  def down
    change_column :banners, :clicks, :integer
    change_column :banners, :views, :integer
    change_column :banners, :max_views, :integer
  end
end
