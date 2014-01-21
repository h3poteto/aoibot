class TodayYoutube < ActiveRecord::Base
  attr_accessible :description, :used, :priority, :title, :url
  validates_uniqueness_of :url
end
