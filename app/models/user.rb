class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  enum role: [:visitor, :subscriber, :admin]

  has_many :user_boxes
  has_many :boxes, through: :user_boxes

  validates :first_name, :last_name, presence: true
end
