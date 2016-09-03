class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :validatable

  validates :name, length: { maximum: 100 }, presence: true
  validates :email, uniqueness: true, presence: true
end
