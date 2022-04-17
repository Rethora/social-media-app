class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :friends

  validates :username, :first_name, :last_name, :age, :gender, presence: true
  validates :age, numericality: { only_integer: true, greater_than: 0, less_than: 121 }
end
