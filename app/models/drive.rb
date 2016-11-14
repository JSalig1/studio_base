class Drive < ActiveRecord::Base
  require 'barby/barcode/qr_code'
  require 'barby/outputter/png_outputter'

  has_many :checkouts, dependent: :destroy

  delegate :url_helpers, to: 'Rails.application.routes'

  validates :name, presence: true
  validates :project, presence: true
  validates :capacity, presence: true

  def qr_image
    "data: image/png; base64," + generate_qr_code
  end

  def checked_out
    checkouts.find_by status: 'Checked Out'
  end

  def date_created
    created_at.strftime(date_format)
  end

  private

  def generate_qr_code
    Base64.encode64(Barby::QrCode.new(unique).to_png.to_s)
  end

  def unique
    ENV['HOST_DOMAIN'] + url_helpers.drive_path(self)
  end

  def date_format
    "%a, %b %e, %Y"
  end

end
