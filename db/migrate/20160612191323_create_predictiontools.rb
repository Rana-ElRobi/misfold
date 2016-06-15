class CreatePredictiontools < ActiveRecord::Migration
  def change
    create_table :predictiontools do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
