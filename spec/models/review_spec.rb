require 'rails_helper'


describe Review do

it { should belong_to :product }
it { should validate_presence_of :author }
it { should validate_presence_of :rating }
it { should validate_presence_of :content_body }
it {should validate_length_of(:content_body).is_at_least(50).with_short_message('Review must be more than 50 characters')}
it {should validate_length_of(:content_body).is_at_most(250).with_long_message('Review must be less than 250 characters')}
it { should validate_numericality_of(:rating).is_greater_than_or_equal_to(1)}
it {should validate_numericality_of(:rating).is_less_than(5)}





  it("titleizes the name of a review author") do
    product = Product.create!({prod_name: 'test', cost: 3, country_of_origin: "USA"})
    review = product.reviews.create!({author: "billy badass", rating: 3, content_body: "nstead of passing a block to the scope method, we use the following operator ->. The -> operator is colloquially known as the stabby lambda. It turns a block into an object called a lambda"})
    expect(review.author()).to(eq("Billy Badass"))
  end


end
