class AdvicePost < ApplicationRecord
  belongs_to :user
  belongs_to :stage

  validates :content, presence: true
end
