class JournalEntry < ApplicationRecord
  belongs_to :user

  validates :content, :emotion_scale, presence: true
end
