class CreatePictureMeasurements < ActiveRecord::Migration[5.1]
  def change
    create_table :picture_measurements do |t|

      t.timestamps
    end
  end
end
