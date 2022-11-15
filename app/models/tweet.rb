class Tweet < ApplicationRecord

  has_one_attached :image


  validates :nickname, presence: true
  validates :concept, presence: true
  validates :image, presence: true, unless: :was_attached?

  def was_attached?
    self.image.attached?
  end


end
