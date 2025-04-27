class Client < ApplicationRecord
  has_many :projects
  has_many :client_memberships
  has_many :users, through: :client_memberships
end