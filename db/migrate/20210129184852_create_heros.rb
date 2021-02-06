class CreateHeros < ActiveRecord::Migration[6.0]
  def change
    create_table :heros do |t|
      t.integer :hero_id
      t.string :name
      t.string :aka
      t.string :alignment
      t.integer :smarts
      t.integer :muscle
      t.integer :speed
      t.integer :stamina
      t.integer :power
      t.integer :combat_skills
      t.string :xsImg
      t.string :smImg
      t.string :mdImg
      t.string :lgImg

      t.timestamps
    end
  end
end
