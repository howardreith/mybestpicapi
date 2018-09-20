class CreateSessionTrackers < ActiveRecord::Migration[5.1]
  def change
    create_table :session_trackers do |t|
      t.references :user, index: true, foreign_key: true, null: false
      t.string :pictures_loaded
      t.string :pictures_reviewed
      t.string :pictures_needing_review
      t.boolean :sent_for_analysis
      t.boolean :isActive
      t.date :last_activity
      t.timestamps
    end
  end
end
