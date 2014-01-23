class NiconicoMovie < ActiveRecord::Base
  attr_accessible :description, :disabled, :priority, :title, :url
end
