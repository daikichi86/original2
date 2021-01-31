class Main < ApplicationRecord

  has_one_attached :image
  belongs_to :user

  has_one :detail
end
