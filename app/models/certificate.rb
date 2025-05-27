require 'securerandom'

class Certificate < ApplicationRecord
  belongs_to :user
  
  validates :name, presence: true
  validates :user_id, presence: true
  
  before_create :generate_qr_code
  
  private
  
  def generate_qr_code
    # This is a placeholder - in a real app you might want to generate an actual QR code
    # For now, we'll just set a random string
    self.qr_code ||= SecureRandom.hex(10)
  end
end
