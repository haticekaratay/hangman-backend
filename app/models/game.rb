class Game < ApplicationRecord
    belongs_to :player
    scope :best_score, ->{self.order(score: :desc).first}
end
