class CreateAdvicePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :advice_posts do |t|
      t.string :content
      t.references :user
      t.references :stage

      t.timestamps
    end
  end
end
