class UserConflict < ApplicationRecord
  belongs_to :user_access
  belongs_to :conflict


    def user_responsibilities(user_access)
    #buscar por cada usuario sus responsabilidades en la tabla de responsabilidades 






      UserAccess.where(username: user_access.username).pluck(:responsibility)
    end

    def user_problems
      problems = []
      UserAccess.select(:username).distinct.each do |user|
        responsibilities = user_responsibilities(user)
        next if responsibilities.length < 2
        Conflict.select(:control_id).distinct.each do |conflict|
         conflicts = Conflict.where(control_id: conflict.control_id).where(responsibility: responsibilities)
         unless conflicts.empty?
          problems.append({ user: user, control: conflict.control })
         end
        end
      end
      problems
    end


end
