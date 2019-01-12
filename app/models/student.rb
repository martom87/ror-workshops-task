class Student < ApplicationRecord
  has_many :participations, dependent: :delete_all
  has_many :subject_item_notes, dependent: :delete_all
  has_many :subject_items, dependent: :delete_all, through: :participations

  validates :first_name, :last_name, presence: true
  accepts_nested_attributes_for :subject_items
end
