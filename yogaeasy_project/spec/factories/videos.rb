# frozen_string_literal: true

FactoryBot.define do
  factory :video do
    title { 'build stamina and endurance' }
    url { 'https://www.youtube.com/watch?v=2222' }
    teacher
    category
  end
end
