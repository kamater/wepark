class RentalsController < ApplicationController
  skip_before_action :authenticate_user!, only: :show

  def show
    @garage = Garage.find(params[:id])
    @rental = Rental.find(params[:id])
  end

  def new
    @garage = Garage.find(params[:garage_id])
    @rental = Rental.new
    @rentals = @garage.next_bookings
    @rental_dates = @rentals.map do |rental|
      {
        from: rental.start_date,
        to: rental.end_date
      }
    end
    # @rental = Rental.new
    # @garage = Garage.find(params[:garage_id])
  end

  def create
    @rental = Rental.new(params_rental)
    @garage = Garage.find(params[:garage_id])
    @rental.user = current_user
    @rental.garage = @garage

    if @rental.save
      redirect_to rental_path(@rental)
    else
      render :new
    end
  end

  def destroy
    @rental = Rental.find(params[:id])
  end

  private

  def params_rental
    params.require(:rental).permit(:start_date, :end_date)
  end

end
