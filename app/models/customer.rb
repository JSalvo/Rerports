class Customer < ActiveRecord::Base
  has_many :reports
end
