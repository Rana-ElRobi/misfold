class CreateIntersectionneighbors < ActiveRecord::Migration
  def change
    create_table :intersectionneighbors do |t|
      t.string :neighbor

      t.timestamps null: false
    end
  end
end
