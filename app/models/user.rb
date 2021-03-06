class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :name, length: { maximum: 10 }
  has_many :users_groups
  has_many :groups, through: :users_groups
  has_many :message
end
