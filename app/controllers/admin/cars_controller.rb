class Admin::CarsController < Admin::BaseController
  before_action :set_train, only: [:new, :create]
  before_action :set_car, only: [:show, :edit, :update, :destroy]

  def index
  	@cars = Car.all
  end

  def show
  end

  def new
    @train = Train.find(params[:train_id])
  	@car = Car.new
  end

  def create
  	@car = @train.cars.new(car_params)

  	if @car.save
  	  redirect_to @train
  	else
  	  render :new
  	end
  end

  def edit
  end

  def update
  	if @car.update(car_params)
  	  redirect_to @car
  	else
  	  render :edit
  	end
  end

  def destroy
  	@car.destroy
  	redirect_to cars_path
  end

  private

  def set_car
  	@car = Car.find(params[:id])
  end

  def set_train
    @train = Train.find(params[:train_id])
  end

  def car_params
  	params.require(:car).permit(:number, :type, :upper, :lower, :train_id, :side_upper, :side_lower, :sit)
  end
end