class Post < ActiveRecord::Base
  has_many :entries, dependent: :destroy
  has_many :tags, :through => :entries

  before_save :process_tags
  attr_accessor :tag_names

  private

  def process_tags
    unless self.tag_names.nil?
    # # First we clear tags (wipes the entries records associated with the post)
    #   self.tags.clear
    #   # Take the comma separated word list, and strip them of whitespace
    #   # Creating a new tag, or finding an existing one for each of the
    #   # words.
    #   # Associate the tag with the current post (self)
      self.tag_names.split(',').each do |tag|
        self.tags << Tag.find_or_create_by_category(tag.strip)
    # end
      end
    end
  end
end
