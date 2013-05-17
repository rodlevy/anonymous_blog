require_relative '../app/models/entry'
require_relative '../app/models/post'
require_relative '../app/models/tag'

Entry.create(   :post_id =>  1,
                :tag_id  =>  1)
Entry.create(   :post_id =>  2,
                :tag_id  =>  2)

Post.create(    :title  =>  "I love Bikes",
                :body   =>  "Bikes are awesome, dude")

Post.create(    :title  =>  "I hate Bikes",
                :body   =>  "Bikes suck, dude")
Post.create(    :title  =>  "I love Bananas",
                :body   =>  "Bananas are awesome, dude")
Post.create(    :title  =>  "I hate Bananas",
                :body   =>  "Bananas suck, dude")

Tag.create(     :category   => "Bikes")
