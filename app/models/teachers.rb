class Teacher < ActiveRecord::Base
  has_many :ratings

  validates :name, {presence: true}
end
