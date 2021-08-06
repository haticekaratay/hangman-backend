class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.belongs_to :player
      t.boolean :isFinished, default: false
      t.integer :score, default: 0
      t.timestamps
    end
  end
end
