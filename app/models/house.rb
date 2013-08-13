class House < ActiveRecord::Base
  attr_accessible :name

  has_many :students

  def self.sorting_hat!(student)
    student.house = House.offset(rand(House.count)).first
    student.save
  end

end