class Stage < ApplicationRecord
  has_many :users
  has_many :advice_posts

  validates :name, presence: true, uniqueness: true
end
