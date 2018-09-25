class PictureWinLossSerializer < ActiveModel::Serializer
  attributes :id, :picture_id, :evaluating_user_id, :winning_picture_id,
  :losing_picture_id, :weight, :data_warehouse_open_date,
  :data_warehouse_close_date
end
