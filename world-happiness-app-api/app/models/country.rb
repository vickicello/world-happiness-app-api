class Country < ApplicationRecord
  has_many :comments
  accepts_nested_atrributes_for :comments
end
