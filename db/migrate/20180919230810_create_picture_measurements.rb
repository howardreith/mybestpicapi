class CreatePictureMeasurements < ActiveRecord::Migration[5.1]
  def change
    create_table :picture_measurements do |t|
      t.references :picture, index: true, foreign_key: true, null: false
      t.float :picture_rating
      t.timestamps
    end
  end
end
