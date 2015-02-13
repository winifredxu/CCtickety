class Ticket < ActiveRecord::Base
  belongs_to :user

  validates :title, presence: true, uniqueness: true
  validates :body, presence:  { message: "must be provided!"}

  before_save :cap_title  

  private
  
  def cap_title
    self.title.capitalize!  
  end

end
