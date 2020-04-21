class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.string :category
      t.integer :price_per_day
      t.string :location
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
