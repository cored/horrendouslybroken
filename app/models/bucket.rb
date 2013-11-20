class Bucket < ActiveRecord::Base
  has_many :posts
  validates :description, length:{ maximum:1500 }
  validates :name, length:{ maximum:64 }
  validates :name, presence:true
end
