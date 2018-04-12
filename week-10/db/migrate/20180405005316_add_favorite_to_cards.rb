class AddFavoriteToCards < ActiveRecord::Migration[5.1]
  def change
    add_column(:cards, :favorite, :boolean, {null: false, default: false})
  end
end
