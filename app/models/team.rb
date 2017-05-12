class Team < ApplicationRecord
  has_many :players
  validates :team_name, presence: true
  # Nice job using ActiveRecord validations, consider adding them to Player as well
end
