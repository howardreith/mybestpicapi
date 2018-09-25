class PictureInfoSerializer < ActiveModel::Serializer
  attributes :id, :picture_id, :aws_id, :title, :filename, :filepath,
  :aws_url, :data_warehouse_open_date, :data_warehouse_close_date,
  :created_at, :updated_at
end
