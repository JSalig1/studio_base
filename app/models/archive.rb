class Archive < ActiveRecord::Base
  belongs_to :project
  belongs_to :drive

  validates :project_id, presence: true
  validates :drive_id, presence: true
  validates :project_id, uniqueness: { scope: :drive_id }
end
