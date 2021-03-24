class User < ApplicationRecord
  validates :email, presence: true
  validates :password, presence: true
  validates :user_name, presence: true
  validates :profile, presence: true
  validates :occupation, presence: true
  validates :position, presence: true

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :prototypes
  has_many :comments
end