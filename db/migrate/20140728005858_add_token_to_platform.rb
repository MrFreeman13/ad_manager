class AddTokenToPlatform < ActiveRecord::Migration
  def change
    add_column :platforms, :token, :string
  end
end
