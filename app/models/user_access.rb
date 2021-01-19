class UserAccess < ApplicationRecord
    has_many :user_conflicts
    has_many :conflicts, through: :user_conflicts
end
