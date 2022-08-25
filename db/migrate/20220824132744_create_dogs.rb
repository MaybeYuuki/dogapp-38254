class CreateDogs < ActiveRecord::Migration[6.0]
  def change
    create_table :dogs do |t|
      t.string :name,            null: false
      t.integer :price,          null: false
      t.integer :gender_id,      null: false
      t.text :explanation,       null: false
      t.integer :hair_color,     null: false
      t.integer :area_id,        null: false
      t.integer :birth_date_id,  null: false
      t.integer :height,         null: false
      t.integer :wight,          null: false
      t.references :user,        null: false, foreign_key: true
      t.timestamps
    end
  end
end
