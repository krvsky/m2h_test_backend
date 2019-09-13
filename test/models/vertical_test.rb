require 'test_helper'

class VerticalTest < ActiveSupport::TestCase
  context 'associations' do
    should have_many(:categories).inverse_of(:vertical)
  end

  context 'validations' do
    should validate_presence_of(:name)
  end

  test 'invalid if name exist in categories table' do
    vertical = Vertical.create(name: Category.first.name)
    assert_equal vertical.errors[:name].first, I18n.t('activerecord.errors.messages.already_exist')
  end

  test 'send email after create' do
    vertical = Vertical.new(name: Faker::Name.name)
    vertical.expects(:send_email_notification)
    vertical.save
  end
end
