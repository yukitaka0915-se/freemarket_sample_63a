FactoryBot.define do

  factory :address, class: Address do

    sequence(:city)     { |i| "city_#{i}"}
    sequence(:number)   { |i| "number_#{i}"}
    sequence(:building) { |i| "building#{i}"}

    first_name       {"鈴木"}
    last_name        {"一郎"}
    first_name_kana  {"スズキ"}
    last_name_kana   {"イチロウ"}
    postal_number    {1500041}
    telephone_number {1031234567}
    area_id             {"1"}

    association :area
    association :user
  end

  # tradeモデルテスト用 出品者住所
  factory :seller_address, class: Address do
       
    postal_number    {"1234567"}
    city             {"city_1"}
    number           {"number_1"}
    building         {"building_1"}
    last_name        {"太郎"}
    first_name       {"出品"}
    last_name_kana   {"タロウ"}
    first_name_kana  {"シュッピン"}
    status_num       {0}
    telephone_number {"0312345678"}

    association :area, factory: :seller_area
    association :user, factory: :seller

  end

  # tradeモデルテスト用 購入者住所
  factory :buyer_address, class: Address do

    postal_number    {"1234567"}
    city             {"city_2"}
    number           {"number_2"}
    building         {"building_2"}
    last_name        {"次郎"}
    first_name       {"購入"}
    last_name_kana   {"ジロウ"}
    first_name_kana  {"コウニュウ"}
    status_num       {0}
    telephone_number {"0312345678"}

    association :area, factory: :buyer_area
    association :user, factory: :buyer

  end

end