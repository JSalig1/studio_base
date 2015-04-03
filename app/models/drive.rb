class Drive < ActiveRecord::Base
  validates :number, presence: true, uniqueness: true
  has_many :archives
  has_many :projects, through: :archives
end
