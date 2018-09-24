class Picture < ApplicationRecord
  belongs_to :user
  has_many :picture_win_loss
  has_many :picture_measurements
  has_many :picture_infos
  has_many :picture_flags
end
