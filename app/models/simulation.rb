class Simulation < ActiveRecord::Base
  belongs_to :user

  def user_name
    if self.user.blank?
      "-"
    else
      self.user.name
    end
  end
end
