class Product < ApplicationRecord
  before_save(:titleize_product)
  scope :three_most_recent, -> { order(created_at: :desc).limit(3)}
  scope :usa, -> { where(country_of_origin: "USA") }
  scope :most_reviews, -> {(
      select("products.id, products.prod_name, count(reviews.id) as reviews_count")
      .joins(:reviews)
      .group("products.prod_name")
      .order("reviews_count DESC")
      .limit(1)
      )}
  has_many:reviews, dependent: :destroy
  validates :prod_name, presence: true
  validates :cost, presence: true
  validates :country_of_origin, presence: true


  private
  def titleize_product
    self.prod_name = self.prod_name.titleize
  end

end
