class Producer < ActiveRecord::Base
  validates :name ,:bug, presence: true
end
