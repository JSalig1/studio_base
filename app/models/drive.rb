class Drive < ActiveRecord::Base
  require 'barby/barcode/qr_code'
  require 'barby/outputter/png_outputter'

  delegate :url_helpers, to: 'Rails.application.routes'

  validates :name, presence: true
  validates :project, presence: true
  validates :capacity, presence: true

  def barcode

    generate_barcode
  end

  private

  def generate_barcode
    Base64.encode64(Barby::QrCode.new(unique).to_png.to_s)
  end

  def unique
    ENV['HOST_DOMAIN'] + url_helpers.drive_path(self)
  end

end
