class Rating < ActiveRecord::Base
  belongs_to :student
  belongs_to :teacher

  validates :punctuality, :humor, :clarity, :competence, :cleanliness, {presence: true}, :inclusion => {:in => 1..10}

end

# check line 5 later
