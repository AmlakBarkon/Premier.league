class Team < ApplicationRecord
  has_many :players
  validates :team_name, presence: true
end
