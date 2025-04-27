class ClientMembership < ApplicationRecord
  belongs_to :client
  belongs_to :user

  enum role: { admin: 0, edit: 1, view: 2 }
end