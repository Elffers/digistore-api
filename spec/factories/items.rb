# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :item, :class => 'Items' do
    cart_id 1
    product_id 1
  end
end
