class Ticket < ActiveRecord::Base
  belongs_to :user, :class_name => 'User', :foreign_key => 'user_id'
  belongs_to :resolver, :class_name => 'User', :foreign_key => 'resolver_id'

  validates :title, presence: true, uniqueness: true

  before_save :cap_title  

  def self.resolved
    self.where(status: true)
  end 
  def self.unresolved
    self.where(status: [false, nil] )
  end

  private
  
  def cap_title
    self.title.capitalize!  
  end

end
