class PostSerializer < ActiveModel::Serializer
  attributes :id, :content, :time_created, :likes
  has_one :user
end
