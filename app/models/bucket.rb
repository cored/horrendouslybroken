class Bucket < ActiveRecord::Base
  has_many :posts

  validates :description, length:{ maximum:1500 }, 
                          presence:true
  validates :name, uniqueness:true, 
                   length:{ maximum:64 }, 
                   presence:true
end
