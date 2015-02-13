FactoryGirl.define do
  factory :ticket do

    association :user, factory: :user # if no user associated, then create a user for factory

#    title Faker::Company.bs, but to get unique titles, we use a sequence
    sequence(:title) { |n| "#{Faker::Company.bs}-#{n}"}

    body Faker::Lorem.paragraph
    
#    status { [false, true].sample }
  end

end
