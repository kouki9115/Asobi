class Blog < ApplicationRecord
  attachment :image

  validates :title, presence: true
  validates :body,  presence: true

  belongs_to :user

end
