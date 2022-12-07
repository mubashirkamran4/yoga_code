# frozen_string_literal: true

class Teacher < ApplicationRecord
  has_many :videos, dependent: :destroy, inverse_of: :teacher
  validates :name, presence: true
  validates :url,
            format: { with: %r{\A(http|https)://[a-z0-9]+([-.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(/.*)?\z}ix }
end
