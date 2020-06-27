class Chapter < ApplicationRecord
  belongs_to :admin

  has_one_attached :thumbnail
  has_one_attached :image
  
  has_rich_text :body
end
