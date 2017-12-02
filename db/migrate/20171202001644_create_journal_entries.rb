class CreateJournalEntries < ActiveRecord::Migration[5.1]
  def change
    create_table :journal_entries do |t|
      t.string :content
      t.date :date
      t.integer :emotion_scale
      t.references :user

      t.timestamps
    end
  end
end
