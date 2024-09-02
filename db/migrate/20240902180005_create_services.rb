class CreateServices < ActiveRecord::Migration[7.1]
  def change
    create_table :services do |t|
      t.string :category
      t.string :title
      t.float :price
      t.text :description
      t.string :experience
      t.string :location
      t.string :availability
      t.float :rating
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
