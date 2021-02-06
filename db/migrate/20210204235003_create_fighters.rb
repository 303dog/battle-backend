class CreateFighters < ActiveRecord::Migration[6.0]
  def change
    create_table :fighters do |t|
      t.integer :winner_id
      t.integer :loser_id
      t.integer :hero_id

      t.timestamps
    end
  end
end
