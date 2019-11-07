FactoryBot.define do
  factory :account do
    nickname { "MyString" }
    user { nil }
    pid { 1 }
    total_collection_power { 1 }
    deleted_at { "2019-11-07 12:18:45" }
  end
end
