class Conflict < ApplicationRecord
  belongs_to :responsibility
  belongs_to :control
end
