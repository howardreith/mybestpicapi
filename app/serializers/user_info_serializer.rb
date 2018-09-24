class UserInfoSerializer < ActiveModel::Serializer
  attributes :id, :email, :password, :gender, :attracted_to, :user_rating,
  :age, :age_preference_min, :age_preference_max, :data_warehouse_open_date,
  :data_warehouse_close_date, :created_at, :updated_at, :user_id
end
