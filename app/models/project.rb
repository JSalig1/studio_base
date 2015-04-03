class Project < ActiveRecord::Base
  validates :project_number, presence: true, uniqueness: true
  has_many :project_archives
  has_many :archives, through: :project_archives
  has_many :drives, through: :project_archives
  
  def archive_location
    if archive == nil
      'not yet archived'
    else
      'archive.archive_number'
    end
  end
end
