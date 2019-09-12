require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
  context 'associations' do
    should belong_to(:vertical).inverse_of(:categories)
    should have_many(:courses).inverse_of(:category)
  end

  context 'validations' do
    should validate_presence_of(:name)
  end

  test 'invalid if name exist in vertical table' do
    vertical = Category.create(name: Vertical.first.name)
    assert_equal vertical.errors[:name].first, I18n.t('activerecord.errors.messages.already_exist')
  end
end
