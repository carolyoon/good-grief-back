class CreateGoals < ActiveRecord::Migration[5.1]
  def change
    create_table :goals do |t|
      t.string :content
      t.boolean :completed
      t.references :user

      t.timestamps
    end
  end
end
