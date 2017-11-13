class Group < ApplicationRecord
  has_many :users_group
  has_many :users, through: :users_group
  has_many :message
  validates :name, length: { maximum: 10 }
end
