class Article < ApplicationRecord
  belongs_to :user
  has_one_attached :image


  validates :text,presence: true
  validates :title,presence: true
  validates :image,presence: true
end
