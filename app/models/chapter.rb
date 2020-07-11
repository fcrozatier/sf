class Chapter < ApplicationRecord
  belongs_to :admin

  has_one_attached :thumbnail
  has_one_attached :image
  
  has_rich_text :body

  self.per_page = 4

  def optimized_image(image, x, y)
    image.variant(resize_to_fill: [x, y]).processed
  end
end
