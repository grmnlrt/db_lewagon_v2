class Sharing < ApplicationRecord
  belongs_to :user
  belongs_to :db_schema
end
