class Project < ApplicationRecord
  belongs_to :company
  belongs_to :client

  belongs_to :project_manager, class_name: "User"
end