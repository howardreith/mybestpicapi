class CreatePictureFlags < ActiveRecord::Migration[5.1]
  def change
    create_table :picture_flags do |t|
      t.references :picture, index: true, foreign_key: true, null: false
      t.string :report_id
      t.string :flag_category
      t.string :review_status
      t.date :data_warehouse_open_date
      t.date :data_warehouse_close_date
      t.timestamps
    end
  end
end
