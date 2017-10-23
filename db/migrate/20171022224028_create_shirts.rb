class CreateShirts < ActiveRecord::Migration[5.1]
  def change
    create_table :shirts do |t|
      t.string :size
      t.string :color
      t.decimal :price
      t.string :sku
    end
  end
end
