class TicketsController < ApplicationController
  before_action :authenticate_user!
  before_action :find_ticket, only: [:show, :edit, :update, :destroy]

  def index
    @entire_tickets = Ticket.all
    @resolved = Ticket.resolved
    @unresolved = Ticket.unresolved
  end
  def new
    @ticket = Ticket.new
  end
  def create
    @ticket = Ticket.new ticket_params
    @ticket.user = current_user

    if @ticket.save
      redirect_to ticket_path(@ticket), notice: "Ticket created successfully."
    else
      render :new
    end
  end
  def show
    #find_ticket
  end
  def edit
    #find_ticket
  end
  def update
    #find_ticket

#    render text:params
    old_status = @ticket.status
    new_status = ticket_params[:status] == "true"
    if (old_status == false) && (new_status == true)
    
      @ticket.resolver = current_user
    end

    if @ticket.update ticket_params
      redirect_to ticket_path(@ticket), notice: "Ticket updated successfully."
    else
      render :edit
    end
  end

  def destroy
    #find_ticket
    @ticket.destroy
    redirect_to tickets_path, notice: "Ticket deleted successfully!"
  end

  private

  def find_ticket
    @ticket = Ticket.find(params[:id])
  end
  def ticket_params
    params.require(:ticket).permit(:title, :body, :status)
  end
end
