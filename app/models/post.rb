class Post < ActiveRecord::Base
  validates :name, presence: true
  validates :url, format: {with: URI::regexp(%w(http https))}, 
                  allow_blank: true
  validates :description, presence:true

  belongs_to :bucket
  has_many :comments, as: :commentable
end
