FactoryBot.define do
  sequence :name do |n|
    "Category #{n}"
  end

  factory :category do
    name
    icon { 'PO' }
    user
  end

  factory :category_with_activities do
    transient do
      activities_count { 3 }
    end

    activities do
      Array.new(activities_count) { association(:activity) }
    end
  end
end
