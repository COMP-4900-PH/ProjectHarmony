class AddImageToSailings < ActiveRecord::Migration
  def change
    add_column :sailings, :image, :string
  end
end
