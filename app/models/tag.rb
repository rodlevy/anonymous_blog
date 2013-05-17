class Tag < ActiveRecord::Base
  has_many :entries
  has_many :posts, :through => :entries

  # tag names (category) should be unique
  # add this validation...
end
