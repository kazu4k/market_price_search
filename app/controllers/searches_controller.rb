class SearchesController < ApplicationController

  before_action :admin_check, except: [:index, :show, :search]
  before_action :set_search, except: [:index, :new, :create, :search]
  before_action :set_q, only: [:index, :search]

  def index
    @searches = Search.all
  end

  def new
    @search = Search.new
  end

  def create
    @search = Search.new(search_params)
    if @search.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  def update
    if @search.update(search_params)
      redirect_to search_path(@search)
    else
      render 'edit'
    end
  end

  def destroy
    if @search.destroy 
      redirect_to root_path
    else
      render 'show'
    end
  end

  def search
    @results = @q.result
  end

  private

  def search_params
    params.require(:search).permit(:maker,
                                   :vehicle_type,
                                   :grade,
                                   :model,
                                   :model_year,
                                   :mileage,
                                   :market_price)
  end

  def set_search
    @search = Search.find(params[:id])
  end

  def admin_check
    if current_user.admin == false
      redirect_to root_path
    end
  end

  def set_q
    @q = Search.ransack(params[:q])
  end

end
