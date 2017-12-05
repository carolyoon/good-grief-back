class User < ApplicationRecord
  belongs_to :stage
  has_many :journal_entries
  has_many :advice_posts
  has_many :goals

  has_secure_password

  validates :username, uniqueness: true, presence: true

  def set_token
    payload ={user: self}
    JWT.encode payload, self.password_digest, 'none'
  end

  def get_decoded_token
    JWT.decode token, self.password_digest, false
  end
end
