class HotelsController < ApplicationController
  def index
    @hotels = Hotel.all
  end

  def new
    @hotel = Hotel.new
  end

  def create
    @hotel = Hotel.new(hotel_params)
    if(@hotel.check_in_date > @hotel.check_out_date)
      flash[:alert] = "You checked out in past !!"
      render'new'
    elsif @hotel.save
      flash[:notice] = "Hotel is saved successfully"
      redirect_to @hotel
    else
      render 'new'
    end

  end

  def show
    @hotel = Hotel.find(params[:id])
  end

  def update
    @hotel = Hotel.find(params[:id])
    
    # if(@hotel.check_in_date > @hotel.check_out_date)
    #   # flash[:alert] = "You checked out in past!!"
    #   render 'edit'
    
      if @hotel.update(hotel_params)
      # flash[:notice] = "Updated successfully"
      redirect_to @hotel
    else
      render 'edit'
    end

  end

  def edit
    @hotel = Hotel.find(params[:id])
  end

  def destroy
    @hotel = Hotel.find(params[:id])
    @hotel.destroy 
    redirect_to hotels_path

end

  private
  def hotel_params
    params.require(:hotel).permit(:name, :location, :price, :check_in_date, :check_out_date)
  end
end
