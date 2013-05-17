class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |post|
      post.string       :title
      post.string       :body
      post.timestamps
    end
  end
end
