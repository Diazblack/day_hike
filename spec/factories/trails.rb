FactoryBot.define do
  factory :trail do
    sequence :length       {|n| n * 1.11}
    sequence :name        {|n| "Trail Number #{n}"}
    sequence :name        {|n| "#{n * 29} Fakeville St"}
  end
end 
