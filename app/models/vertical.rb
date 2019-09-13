class Vertical < ApplicationRecord
  include Notificable

  has_many :categories, inverse_of: :vertical

  validates :name, presence: true, uniqueness: true
  validates_with UniqFieldValidator, field: :name, model: :category
end
