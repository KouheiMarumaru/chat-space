class Group < ApplicationRecord
  has_many :users_groups
  has_many :users, through: :users_groups
  has_many :messages
  validates :name, length: { maximum: 10 }
end
