class Podcast < ApplicationRecord
  validates :name, presence: true
  validates :genre, presence: true
  validates :explicit_content, presence: true

  has_many :episodes, dependent: :destroy

end
