class Product < ActiveRecord::Base
  has_many :reviews
  validates :name,:cost,:country, :presence => true
  validates_numericality_of :cost

  scope :most_reviewed_products, -> {(
    select("products.id, products.name, products.cost, products.country,count(reviews.id) as reviews_count")
    .joins(:reviews)
    .group("products.id")
    .order("reviews_count DESC")
    .limit(3)
  )}

  scope :recently_added_products, -> {
    order(created_at: :desc).limit(3)
  }

  scope :local_products, -> {
    where("country like ?", "USA")
  }
end
