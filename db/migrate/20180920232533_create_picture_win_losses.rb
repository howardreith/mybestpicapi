class CreatePictureWinLosses < ActiveRecord::Migration[5.1]
  def change
    create_table :picture_win_losses do |t|
      t.references :picture, index: true, foreign_key: true, null: false
      t.string :evaluating_user_id
      t.string :winning_picture_id
      t.string :losing_picture_id
      t.float :weight
      t.date :data_warehouse_open_date
      t.date :data_warehouse_close_date
      t.timestamps
    end
  end
end
