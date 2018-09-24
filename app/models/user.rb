# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :examples
  has_many :user_infos
  has_many :sessions_trackers
  has_many :pictures
end
