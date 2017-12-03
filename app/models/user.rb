class User < ApplicationRecord
  belongs_to :stage
  has_many :journal_entries
  has_many :advice_posts
  has_many :goals

  has_secure_password

  validates :username, uniqueness: true, presence: true


end
