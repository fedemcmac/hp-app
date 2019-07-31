class AnswerSerializer < ActiveModel::Serializer
  attributes :id, :content
  has_one :question
end
