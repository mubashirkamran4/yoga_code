# frozen_string_literal: true

require 'rails_helper'
RSpec.describe Teacher do
  subject { build(:video) }

  describe 'associations' do
    it { should belong_to(:category) }
    it { should belong_to(:teacher) }
  end

  describe 'validations' do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:url) }
    it { should_not allow_value('https://www.outsideyoutube.com').for(:url) }
    it { should allow_value('https://www.youtube.com/watch?v=lPdhXdSiBzY').for(:url) }
    it { should_not allow_value('https://www.youtube.com/invalid_watch').for(:url) }
    it do # if written like above example, it would try to test null value and hence would fail
      create(:video)
      should validate_uniqueness_of(:url)
    end
  end
end
