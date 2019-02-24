# == Schema Information
#
# Table name: students
#
#  id         :integer          not null, primary key
#  name       :string
#  hometown   :string
#  birthday   :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'pry'
class Student < ActiveRecord::Base
  has_many :classroom_students
  has_many :classrooms, through: :classroom_students

  def self.search(arg)
    if arg == ''
      self.all
    else
      binding.pry
      self.all.select { |stu| stu.name.upcase.include? arg.upcase  }
    end
  end
end
