class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :genre, :author_id #:new_attr

    #creates a new attribute to be shown in API
  # def new_attr
  #   object.title + "-" + object.genre
  # end
end
