class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end

  def show
    @customer = Customer.find(params[:id])
  end

  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new(customer_params)
    if @customer.save
      redirect_to customers_path, notice: 'Cliente creado exitosamente.'
    else
      render :new
    end
  end

  private

  def customer_params
    params.require(:customer).permit(:name, :email)
  end
end