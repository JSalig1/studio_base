class Archive < ActiveRecord::Base
  validates :archive_number, presence: true, uniqueness: true
  has_many :project_archives
  has_many :projects, through: :project_archives

  def make_project_entry
    ProjectArchive.new(archive_id: self.id)
  end
end
