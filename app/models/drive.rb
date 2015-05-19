class Drive < ActiveRecord::Base
  has_many :archives, dependent: :destroy
  has_many :projects, through: :archives

  validates :number, presence: true, uniqueness: true
  validates :capacity, presence: true

  enum category: [:server, :smoke]
  enum file_system: [:mac_os, :ntfs, :linux]
  enum check_out_status: [:in, :out]

  def name
    "#{category.capitalize} Archive #{number}"
  end
end
