class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :lives, :score, :high_score
  has_one :house
end
