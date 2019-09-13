require 'test_helper'

class CourseTest < ActiveSupport::TestCase
  context 'associations' do
    should belong_to(:category).inverse_of(:courses)
  end

  context 'validations' do
    should validate_presence_of(:name)
    should validate_presence_of(:author)
  end

  test 'send email after create' do
    course = Course.new(name: Faker::Name.name, author: Faker::Name.name)
    course.expects(:send_email_notification)
    course.save
  end
end
