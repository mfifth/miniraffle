class HomeController < ApplicationController
  def index
    @raffles = Raffle.all
    @entry = Entry.new
  end

  def create_entry
    @entry       = Entry.new(email: params[:email], raffle_id: params[:raffle_id])
    @raffle      = Raffle.find(params[:raffle_id])
    @contestants = @raffle.entries.count

    odds = Fortune::Odds.new(win: 1, lose: @contestants)

    if @entry.save
      flash[:success] = "Your were successfully entered! You are contestant number #{@contestants}! Your odds of winning are #{odds.p} percent!"
      redirect_back fallback_location: "/"
    else
      flash[:alert] = "This email has already been used please try a different email"
      redirect_back fallback_location: "/"
    end
  end
end
