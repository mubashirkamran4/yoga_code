# frozen_string_literal: true

class Video < ApplicationRecord
  belongs_to :teacher, optional: false, inverse_of: :videos
  belongs_to :category, optional: false, inverse_of: :videos

  validates :title, presence: true
  validates :description, length: { maximum: 300 }
  validates :url, presence: true, uniqueness: true
  validates :url, format: { with: %r{\A(http|https)://www\.youtube\.com/watch\?v=([a-zA-Z0-9_-]*)} }

  validates :rating, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 5 }
end
