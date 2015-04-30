class Project < ActiveRecord::Base
  has_many :archives, dependent: :destroy
  has_many :drives, through: :archives

  validates :job_number, presence: true, uniqueness: true
  validates :name, presence: true

  enum status: [:in_progress, :completed]
end
