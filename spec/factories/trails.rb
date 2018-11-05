FactoryBot.define do
  factory :trail do
    sequence :length       {|n| n }
    sequence :name        {|n| "Trail Number #{n}"}
    sequence :address       {|n| "#{n * 29} Fakeville St"}
  end
end
