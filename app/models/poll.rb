class Poll < ActiveRecord::Base
  attr_accessible :name, :slug
  before_save :set_slug
  
  private
  
  def random_string
    slug = (0..10).map{97.+(rand(25)).chr}.join
    return slug if Poll.find_by_slug(slug).nil?
    random_string
  end

  def set_slug
    self.slug ||= random_string
  end
end
