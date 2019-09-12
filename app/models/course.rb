class Course < ApplicationRecord
  include AASM

  aasm column: 'state' do
    state :active, initial: true
  end

  belongs_to :category, inverse_of: :courses, optional: true

  validates :author, presence: true
  validates :name, presence: true
end
