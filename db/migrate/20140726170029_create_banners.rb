class CreateBanners < ActiveRecord::Migration
  def change
    create_table :banners do |t|
      t.string :name
      t.text :code
      t.string :partner_url
      t.integer :views
      t.integer :clicks
      t.integer :max_views

      t.timestamps
    end
  end
end
