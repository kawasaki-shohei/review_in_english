class Movie < ApplicationRecord
  mount_uploader :image, ImageUploader

  has_many :reviews, dependent: :destroy

  validates :en_title, presence: true
end
