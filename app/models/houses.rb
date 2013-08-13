class Houses < ActiveRecord
  attr_accessible :name

  has_many :students
end