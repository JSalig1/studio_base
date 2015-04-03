class Drive < ActiveRecord::Base
  has_many :archives
  has_many :projects, through: :archives

  validates :number, presence: true, uniqueness: true
end
