FactoryBot.define do    
    factory :user do
        name { "Eu_eu" }
        sequence(:email) { |n| "Eu_eu#(n)@empire.org" }
        password { "password" }
        password_confirmation { "password" }
    end
end