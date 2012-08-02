class Question < ActiveRecord::Base
  attr_accessible :text
  belongs_to :poll
end
