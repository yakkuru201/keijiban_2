class Board < ActiveRecord::Base
  validates :name, presence: true, length: { in: 4..32 }, uniqueness: true
end