require_relative '../../config/application'

class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string   :name

      t.timestamps
    end
  end
end
