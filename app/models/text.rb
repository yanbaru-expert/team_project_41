class Text < ApplicationRecord
  validates :genre, :title, :content, presence: true
  def self.search(search)
    return Text.all unless search
    Text.where(["content LIKE ?", "%#{search}%"])
  end
end
