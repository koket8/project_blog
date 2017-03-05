class HasCategory < ApplicationRecord
  belongs_to :street
  belongs_to :category
end
