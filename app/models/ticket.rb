class Ticket < ActiveRecord::Base
  belongs_to :user

  validates :title, presence: true, uniqueness: true

  before_save :cap_title  

  def resolved
    Ticket.where('status = true')
  end 
  def unresolved
    Ticket.where('status = false')
  end

  private
  
  def cap_title
    self.title.capitalize!  
  end

end
