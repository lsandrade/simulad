class Simulation < ActiveRecord::Base
  belongs_to :user

  #validates :user_id, uniqueness: true, presence: true

  def user_name
    if self.user.blank?
      "-"
    else
      self.user.name
    end
  end
end
