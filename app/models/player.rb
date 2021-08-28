class Player < ApplicationRecord
    has_many :games
    validates :name, presence: true , uniqueness: true,  length: { in: 3..30 }, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }
end
