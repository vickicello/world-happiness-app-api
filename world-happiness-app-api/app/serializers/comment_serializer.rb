class CommentSerializer < ActiveModel::Serializer
  attributes :id, :content, :commentor, :country_id
end
