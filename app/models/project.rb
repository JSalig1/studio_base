class Project < ActiveRecord::Base
  validates :project_number, presence: true, uniqueness: true
  belongs_to :archive
  
  def archive_location
    if archive == nil
      'not yet archived'
    else
      archive.archive_number
    end
  end
end
