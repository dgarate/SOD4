class Conflict < ApplicationRecord
  belongs_to :cycle
  has_many :responsibility_conflicts
  has_many :responsibilities, through: :responsibility_conflicts
end
