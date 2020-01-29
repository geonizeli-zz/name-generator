class LastName < ActiveRecord::Base
  validates_presence_of :name, :gender
end
