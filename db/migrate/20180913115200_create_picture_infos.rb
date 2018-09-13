class CreatePictureInfos < ActiveRecord::Migration[5.1]
  def change
    create_table :picture_infos do |t|

      t.timestamps
    end
  end
end
