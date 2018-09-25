class PictureFlagSerializer < ActiveModel::Serializer
  attributes :id, :picture_id, :report_id, :flag_category, :review_status,
  :data_warehouse_open_date, :data_warehouse_close_date
end
