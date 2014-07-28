class ChangeColumnInBanners < ActiveRecord::Migration
  def up
    change_column :banners, :partner_url, :text, limit: 1000
    rename_column :banners, :partner_url, :banner_partner_code
  end

  def down
    rename_column :banners, :banner_partner_code, :partner_url
    change_column :banners, :partner_url, :string
  end
end
