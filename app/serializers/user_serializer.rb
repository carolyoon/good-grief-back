class UserSerializer < ActiveModel::Serializer
  attributes :id, :token, :stage_id
  has_many :goals
  has_many :advice_posts
  has_many :journal_entries
end
