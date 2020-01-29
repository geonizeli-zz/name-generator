class FirstName < ActiveRecord::Base
  validates_presence_of :name, :gender
end