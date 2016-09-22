class Drive < ActiveRecord::Base
  validates :name, presence: true
  validates :project, presence: true
  validates :capacity, presence: true

  def barcode
    require 'barby/barcode/code_128'
    require 'barby/outputter/png_outputter'

    generate_barcode
  end

  private

  def generate_barcode
    Base64.encode64(Barby::Code128.new(unique).to_png.to_s)
  end

  def unique
    "#{self.class}#{id}"
  end

end
