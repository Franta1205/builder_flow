class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :client_memberships
  has_many :clients, through: :company_memberships

  has_many :company_memberships
  has_many :companies, through: :company_memberships

  validates :email, presence: true, uniqueness: { scope: :company_id }
  validates :first_name, :last_name, presence: true
end
