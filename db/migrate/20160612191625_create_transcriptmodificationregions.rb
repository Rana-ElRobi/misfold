class CreateTranscriptmodificationregions < ActiveRecord::Migration
  def change
    create_table :transcriptmodificationregions do |t|
      t.integer :start
      t.integer :end
      t.string :modification

      t.timestamps null: false
    end
  end
end
