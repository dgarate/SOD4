class UserResponsibility < ApplicationRecord
  belongs_to :responsibility
  belongs_to :user_access
end
