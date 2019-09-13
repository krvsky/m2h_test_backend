class Category < ApplicationRecord
  include AASM
  include Notificable

  aasm column: 'state' do
    state :active, initial: true
  end

  belongs_to :vertical, optional: true, inverse_of: :categories
  has_many :courses, inverse_of: :category

  validates :name, presence: true, uniqueness: true
  validates_with UniqFieldValidator, field: :name, model: :vertical
end
