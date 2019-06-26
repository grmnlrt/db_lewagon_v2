class DbSchema < ApplicationRecord
  belongs_to :user
  has_many :sharings
  before_create :set_token

  def set_token
    self.token = SecureRandom.hex(25)
  end
end
