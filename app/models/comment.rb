class Comment < ActiveRecord::Base
  default_scope order("created_at DESC")
  belongs_to :board
  validates :content, presence: ture, length: { in: 1..400 }
end
