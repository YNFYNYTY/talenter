class User < ActiveRecord::Base

	has_and_belongs_to_many :projects
	has_and_belongs_to_many :skills
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  validates :email, presence: true, uniqueness: true, format: /\S+@\S+\.\S+/
  validates :password, length: { minimum: 4 }, on: :create
  validates :password, confirmation: true
  validate  :validate_roles
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end

