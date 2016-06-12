class CreateTranscripts < ActiveRecord::Migration
  def change
    create_table :transcripts do |t|
      t.integer :id
      t.string :name
      t.boolean :iscolonical
      t.string :sequence
      t.string :refrencesequence
      t.string :alternativename

      t.timestamps null: false
    end
  end
end
