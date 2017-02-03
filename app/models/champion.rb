class Champion < ApplicationRecord
  has_many :champion_roles
  has_many :roles, through: :champion_roles

end
