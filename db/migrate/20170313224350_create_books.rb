class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :title
      t.decimal :price, precision: 4, scale: 2
      t.integer :year
      t.string :description

      t.timestamps
    end
  end
end
