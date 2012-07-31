class Question < ActiveRecord::Base
  attr_accessible :text
  validates :text, presence: true
  belongs_to :poll
end
