FactoryBot.define do
  sequence :name do |n|
    "User #{n}"
  end
  factory :activity do
    name
    amount { 20 }
    author

    factory :activity_with_categories do
      transient do
        categories_count { 5 }
      end

      categories do
        Array.new(categories_count) { association(:category) }
      end
    end
  end
end
