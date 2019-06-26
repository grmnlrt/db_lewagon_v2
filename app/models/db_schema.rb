class DbSchema < ApplicationRecord
  belongs_to :user
  has_many :sharings
end
