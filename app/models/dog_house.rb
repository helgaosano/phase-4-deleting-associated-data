class DogHouse < ApplicationRecord
  # has_many :reviews
  has_many :reviews, dependent: :destroy
end


# dependent: :destroy tells Active Record to delete all the associated records when 
# the parent record is deleted.
# All reviews associated with a DogHouse instance will be destroyed when .destroy is called.