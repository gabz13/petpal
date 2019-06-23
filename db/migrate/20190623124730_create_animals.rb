class CreateAnimals < ActiveRecord::Migration[5.2]
  def change
    create_table :animals do |t|
      t.string :type
      t.string :name
      t.text :description
      t.string :size
      t.string :energy
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
