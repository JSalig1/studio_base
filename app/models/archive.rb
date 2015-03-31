class Archive < ActiveRecord::Base
  validates :archive_number, presence: true
end
