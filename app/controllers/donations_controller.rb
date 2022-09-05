class DonationsController < ApplicationController
  before_action :donation_params, only: %i[create]

  def new
    @donation = Donation.new
  end

  def create
    @donation = Donation.new(donation_params)
    @donation.user = current_user
    raise
    if @donation.save
      redirect_to root_path, notice: "Obrigado pela sua doação"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def make_your_donation

  end

  private

  def donation_params
    params.require(:donation).permit(:amount, :monthly, :payment_type)
  end
end
