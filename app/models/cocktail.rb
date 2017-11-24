class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  validates :name, presence: true, uniqueness: true
  mount_uploader :photo, PhotoUploader

  def smart_image_url
    if self.picture
      return self.picture
    elsif self.photo.url
      return self.photo.url
    else
      return 'http://www.seriouseats.com/images/2014/11/20141104-cocktail-party-old-fashioneds-holiday-vicky-wasik-3.jpg'
    end
  end
end

