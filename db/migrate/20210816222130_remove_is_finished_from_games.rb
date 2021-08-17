class RemoveIsFinishedFromGames < ActiveRecord::Migration[6.1]
  def change
    remove_column :games, :isFinished
  end
end
