class Control < ApplicationRecord
  belongs_to :cycle
  has_many :conflicts
  has_many :responsibilities, through: :conflicts  
end
