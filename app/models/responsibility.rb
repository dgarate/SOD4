class Responsibility < ApplicationRecord
  belongs_to :cycle
  has_many :conflicts
  has_many :controls, through: :conflicts

  has_many :user_responsibilities
  has_many :user_accesses, through: :user_responsibilities
end
