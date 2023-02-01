class DonationsController < ApplicationController
  before_action :donation_params, only: %i[create]

  def new
    @donation = Donation.new
  end

  def create
    @donation = Donation.new(donation_params)
    @donation.user = current_user
    @donation.amount = params[:donation][:amount_options].join.to_i if params[:donation][:amount].empty?

    if @donation.save
      redirect_to root_path, notice: "Obrigado pela sua doação"
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def donation_params
    params.require(:donation).permit(:amount, :monthly, :payment_type)
  end
end
