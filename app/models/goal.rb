class Goal < ApplicationRecord
  belongs_to :user

  validates :content, :completed, presence: true
end
