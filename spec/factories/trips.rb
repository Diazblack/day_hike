FactoryBot.define do
  factory :trip do
    sequence :name        {|n| "Trip #{n}"}
    sequence :start_date  {|n| " #{2000 + (n * 1)}#{2}#{n} " }
    sequence :end_date    {|n| " #{2000 + (n * 1)}#{2}#{n+1} "}
  end
end
