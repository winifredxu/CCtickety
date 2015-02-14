class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :tickets, dependent: :nullify, :class_name => 'Ticket', :foreign_key => 'ticket_id'
  has_many :resolved_tickets, :class_name => 'Ticket', :foreign_key => 'resolver_id'



  def full_name
    if (first_name || last_name)
      "#{first_name} #{last_name}".squeeze(" ").strip
    else
      email
    end
  end
  
  # alias_method :name, :full_name
  
end
