require_relative '../../config/application'

class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer  :humor
      t.integer  :cleanliness
      t.integer  :punctuality
      t.integer  :clarity
      t.integer  :competence

      t.timestamps
    end
  end
end
