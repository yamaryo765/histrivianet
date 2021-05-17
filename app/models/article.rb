class Article < ApplicationRecord
  belongs_to :user
  mount_uploader :image, ImageUploader
  


  validates :text,presence: true
  validates :title,presence: true
  validates :image,presence: true
  validates :book_name,presence: true
end
