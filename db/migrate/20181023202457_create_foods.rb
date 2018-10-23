class CreateFoods < ActiveRecord::Migration[5.2]
  def change
    create_table :foods do |t|
      t.string :name
      t.integer :weight
      t.boolean :vegan
      t.timestamp :date_added
      t.references :fridge, foreign_key: true

      t.timestamps
    end
  end
end
