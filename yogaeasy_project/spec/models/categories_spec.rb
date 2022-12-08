# frozen_string_literal: true

require 'rails_helper'
RSpec.describe Category do
  subject { build(:category) }

  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_uniqueness_of(:name) }
    
  end
end
