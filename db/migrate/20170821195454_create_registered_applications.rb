class CreateRegisteredApplications < ActiveRecord::Migration[5.1]
  def change
    create_table :registered_applications do |t|
      t.string :title
      t.string :url
      t.integer :user_id
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
