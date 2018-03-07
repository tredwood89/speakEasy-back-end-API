class CommentSerializer < ActiveModel::Serializer
  attributes :like, :content, :created_at, :id #:new_attr

    #creates a new attribute to be shown in API
  # def new_attr
  #   object.title + "-" + object.genre
  # end
end
