class TicketsController < ApplicationController
  before_action :authenticate_user!
  before_action :find_ticket, only: [:show, :edit, :update, :destroy]
  before_action :ticket_params

  def index

  end
  def new

  end
  def create
  end
  def show

  end
  def edit
  end
  def update
  end
  def destroy
  end

  private

  def find_ticket

  end
  def ticket_params

  end
end
