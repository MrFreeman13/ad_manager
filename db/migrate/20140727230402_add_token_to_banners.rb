class AddTokenToBanners < ActiveRecord::Migration
  def change
    add_column :banners, :token, :string
  end
end
