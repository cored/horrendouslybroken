class Comment < ActiveRecord::Base

  validates :body, presence:true, 
                   length: { maximum: 1500 }

  belongs_to :commentable, polymorphic:true
  belongs_to :user

end
