FactoryGirl.define do
  # Define your Spree extensions Factories within this file to enable applications, and other extensions to use and override them.
  #
  # Example adding this to your spec_helper will load these Factories for use:
  # require 'spree_order_people/factories'
  FactoryGirl.define do
    factory :person, class: Spree::Person do
      firstname 'Person'
      sequence(:lastname) { |n| "#{n}" }
      sequence(:email) { |n| "person#{n}@example.com" }
    end

    factory :invalid_person, class: Spree::Person do
    end
  end
end
