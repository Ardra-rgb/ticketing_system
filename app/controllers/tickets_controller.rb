class TicketsController < ApplicationController
  def index
    @tickets = Ticket.all
  end

  def new
    @ticket = Ticket.new
  end

 def create
  user = User.find_by!(email: "alice@example.com")
  @ticket = user.tickets.new(ticket_params)
  @ticket.status = "open"
  if @ticket.save
    redirect_to "/tickets"
  else
    render :new, status: :unprocessable_entity
  end
end

  private

  def ticket_params
   params.require(:ticket).permit(:title, :description, :priority)
  end
end