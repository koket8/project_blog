class Category < ApplicationRecord


validates :name, presence: true

has_many :has_categories

has_many :streets, through: :has_categories





end
