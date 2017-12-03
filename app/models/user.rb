class User < ApplicationRecord
  has_secure_password

  belongs_to :stage
  has_many :journal_entries
  has_many :advice_posts
  has_many :goals

  validates :username, uniqueness: true, presence: true
end
