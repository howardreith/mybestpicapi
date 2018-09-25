class PictureMeasurementSerializer < ActiveModel::Serializer
  attributes :id, :picture_id, :picture_rating, :created_at, :updated_at
end
