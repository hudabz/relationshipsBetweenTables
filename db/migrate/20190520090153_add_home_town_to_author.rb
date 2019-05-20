class AddHomeTownToAuthor < ActiveRecord::Migration[5.2]
  def change
    add_column :authors, :home_town, :string
  end
end
