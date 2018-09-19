class CreateUserInfos < ActiveRecord::Migration[5.1]
  def change
    create_table :user_infos do |t|
      t.references :user, index: true, foreign_key: true, null: false

      t.string :email
      t.string :password
      t.string :gender
      t.string :attracted_to
      t.float :user_rating
      t.integer :age
      t.integer :age_preference_min
      t.integer :age_preference_max
      t.date :data_warehouse_open_date
      t.date :data_warehouse_close_date

      t.timestamps null: false
    end
  end
end
