class Flag < ActiveRecord::Base
  belongs_to :video
  attr_accessible :description, :seconds, :title
end
