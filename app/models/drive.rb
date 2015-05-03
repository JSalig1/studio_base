class Drive < ActiveRecord::Base
  has_many :archives, dependent: :destroy
  has_many :projects, through: :archives

  validates :number, presence: true, uniqueness: true

  enum category: [:server, :smoke]
end
