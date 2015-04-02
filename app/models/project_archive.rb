class ProjectArchive < ActiveRecord::Base
  belongs_to :project
  belongs_to :archive

  validates :project_id, presence: true
  validates :archive_id, presence: true
  validates :project_id, uniqueness: { scope: :archive_id }
end
