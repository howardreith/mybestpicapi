class CreatePictureWinLosses < ActiveRecord::Migration[5.1]
  def change
    create_table :picture_win_losses do |t|

      t.timestamps
    end
  end
end
