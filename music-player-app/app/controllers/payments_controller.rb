class PaymentsController < ApplicationController
  def index
    @payments = Payment.all
  end

  def new
    credit_card = ActiveMerchant::Billing::CreditCard.new
  end

  def create
    credit_card = ActiveMerchant::Billing::CreditCard.create(payment_params)
  end

  private
  def payment_params
    params.require(:payment).permit(:first_name, :last_name, :credit_card_number, :expiration_month, :expiration_year, :card_security_code)
  end
end
