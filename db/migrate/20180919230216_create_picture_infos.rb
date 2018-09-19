class CreatePictureInfos < ActiveRecord::Migration[5.1]
  def change
    create_table :picture_infos do |t|
      t.references :picture, index: true, foreign_key: true, null: false
      t.string :aws_id
      t.string :title
      t.string :filename
      t.string :filepath
      t.string :aws_url
      t.date :data_warehouse_open_date
      t.date :data_warehouse_close_date
      t.timestamps
    end
  end
end
