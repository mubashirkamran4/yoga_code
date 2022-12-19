# frozen_string_literal: true

require 'rails_helper'
RSpec.describe Teacher do
  subject { build(:teacher) }

  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_uniquness_of(:name) }
    it { should validate_uniqueness_of(:thumbnail) }
    it { should_not allow_value('invalid_url.com').for(:thumbnail) }
    it { should allow_value('https://www.validurl.com').for(:thumbnail) }
    it { should allow_value('https://www.valid-url.com').for(:thumbnail) }
  end
end
