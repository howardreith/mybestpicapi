class SessionTrackerSerializer < ActiveModel::Serializer
  attributes :id, :pictures_loaded, :pictures_reviewed, :pictures_needing_review,
  :sent_for_analysis, :isActive, :last_activity, :created_at, :updated_at,
  :user_id
end
