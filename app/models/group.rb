class Group < ApplicationRecord
  has_many :users_group
  has_many :user, through: :users_group
  has_many :message
end
