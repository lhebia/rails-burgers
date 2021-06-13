class CreateHamburgers < ActiveRecord::Migration[6.1]
  def change
    create_table :hamburgers do |t|
      t.string :name
      t.string :brand
      t.string :price
      t.string :description

      t.timestamps
    end
  end
end
