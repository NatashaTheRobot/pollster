class Poll < ActiveRecord::Base
  attr_accessible :name, :slug, :admin_slug, :questions_attributes
  before_create :set_slugs
  has_many :questions, dependent: :destroy
  validates :name, presence: true
  accepts_nested_attributes_for :questions, reject_if: proc { |question| question[:text].blank? }
  
  private
  def set_slugs
    set_slug
    set_admin_slug    
  end

  def set_slug
    self.slug = random_string
    set_slug unless Poll.find_by_slug(self.slug).nil?
  end
  
  def set_admin_slug
    self.admin_slug = random_string
    set_admin_slug unless Poll.find_by_slug(self.admin_slug).nil?  
  end
  
  def random_string
    (0..10).map{97.+(rand(25)).chr}.join
  end
end
