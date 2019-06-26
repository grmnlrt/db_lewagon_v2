class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :db_schemas
  has_many :sharings
  has_many :shared_db_schemas, through: :sharings, source: :db_schemas
end
