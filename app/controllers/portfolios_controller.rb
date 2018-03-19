class PortfoliosController < ApplicationController
  before_action :set_portfolio_item, only: [:edit, :update, :show, :destroy]
  layout "portfolio"
  #petergate access role implemetation
  #access all: all user roles will accees blog :show and :index actions
  #user: access can not delete a blog any other actions can be added like new create edit update
  #site_admin: defined as custom role in user.rb model
  access all: [:show, :index, :angular], user: {except: [:destroy, :new, :create, :edit, :update, :sort]}, site_admin: :all

  def index
    @portfolio_items = Portfolio.by_position #custom method found in portfolio.rb model
  end

  def sort
    params[:order].each do |key, value|
      Portfolio.find(value[:id]).update(position: value[:position])
    end

    render nothing: true #not looking for a view
  end

  def angular
    @angular_portfolio_items = Portfolio.angular
  end

  def new
    @portfolio_item = Portfolio.new
  end

  def create
    @portfolio_item = Portfolio.new(portfolio_params)

    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to portfolios_path, 
          notice: 'Portfolio item is now live.' }
      else
        format.html { render :new }        
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @portfolio_item.update(portfolio_params)
        format.html { redirect_to portfolios_path, 
          notice: 'Portfolio item was updated.' }
      else
        format.html { render :edit }        
      end
    end
  end

  def show    
  end

  def destroy    
    @portfolio_item.destroy
    respond_to do |format|
      format.html { redirect_to portfolios_url, notice: "Portfolio was removed" }
    end
  end

  private

  def set_portfolio_item
    @portfolio_item = Portfolio.find(params[:id])
  end

  def portfolio_params
    params.require(:portfolio).permit(:title, 
                                      :subtitle, 
                                      :body,
                                      :main_image,
                                      :thumb_image,
                                      technologies_attributes: [:id, :name, :_destroy]
                                      )
  end

end
