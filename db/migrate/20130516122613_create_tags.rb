class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |tag|
      tag.string      :category
      tag.timestamps
    end
  end
end
