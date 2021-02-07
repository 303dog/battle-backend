class CreateFighters < ActiveRecord::Migration[6.0]
  def change
    create_table :fighters do |t|
      t.integer :wins
      t.integer :losses
      t.integer :hero_id

      t.timestamps
    end
  end
end
