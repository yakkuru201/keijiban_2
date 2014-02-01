class Comment < ActiveRecord::Base
  default_scope order("created_at DESC")
  belongs_to :board
  validates :content, length: { in: 1..400 }
end
