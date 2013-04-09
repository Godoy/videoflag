class Video < ActiveRecord::Base
  belongs_to :user
  has_many :flags

  attr_accessible :name, :url, :videoId, :user_id
end
