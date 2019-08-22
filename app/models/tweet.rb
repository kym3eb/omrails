class Tweet < ApplicationRecord
  belongs_to :user

  validates :user, presence: true
  validates :content, presence: :true, length: { maximum: 140 }

  acts_as_votable
end
