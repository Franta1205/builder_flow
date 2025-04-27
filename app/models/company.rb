class Company < ApplicationRecord
  has_many :company_memberships
  has_many :users, through: :company_memberships
  has_many :projects, dependent: :destroy
end
