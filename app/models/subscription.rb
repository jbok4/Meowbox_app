class Subscription < ActiveRecord::Base
  belongs_to :user
  has_many :boxes
end
