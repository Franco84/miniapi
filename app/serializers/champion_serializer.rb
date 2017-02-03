class ChampionSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :roles
end
