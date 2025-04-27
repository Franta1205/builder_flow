class CompanyMembership < ApplicationRecord
  belongs_to :company
  belongs_to :user

  enum role: { admin: 0, project_manager: 1, foreman: 2, worker: 4 }
end