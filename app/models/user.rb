class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  belongs_to :company
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum role: { admin: 1, project_manager: 2, foreman: 3, worker: 4}
  validates :email, presence: true, uniqueness: { scope: :company_id }
  validates :first_name, :last_name, presence: true
end
