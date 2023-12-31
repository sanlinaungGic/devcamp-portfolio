class PortfoliosController < ApplicationController
  layout 'portfolio'
  
    def index
        @portfolio_items = Portfolio.all
    end

    def new
        @portfolio_item = Portfolio.new
    end

    def create
        @portfolio_item = Portfolio.new(portfolio_params)
    
        respond_to do |format|
          if @portfolio_item.save
            format.html { redirect_to portfolios_path, notice: "Your portfolio item was successfully created." }
            format.json { render :show, status: :created, location: @portfolio_item }
          else
            format.html { render :new, status: :unprocessable_entity }
            format.json { render json: @portfolio_item.errors, status: :unprocessable_entity }
          end
        end
      end
    
    def edit
        @portfolio_item = Portfolio.find(params[:id])
    end

    def update
        @portfolio_item = Portfolio.find(params[:id])
        respond_to do |format|
          if @portfolio_item.update(portfolio_params)
            format.html { redirect_to portfolios_path, notice: "The record was successfully updated." }
            format.json { render :show, status: :ok, location: @portfolio_item }
          else
            format.html { render :edit, status: :unprocessable_entity }
            format.json { render json: @portfolio_item.errors, status: :unprocessable_entity }
          end
        end
      end

    def show 
      @portfolio_item = Portfolio.find(params[:id])
    end

    def destroy
      #Perform to lookup
      @portfolio_item = Portfolio.find(params[:id])

      #destroy/delete the record
      @portfolio_item.destroy
  
      #Redirect
      respond_to do |format|
        format.html { redirect_to portfolios_url, notice: "Record was successfully destroyed." }
        format.json { head :no_content }
      end
    end

    private
    def portfolio_params
      params.require(:portfolio).permit(:title, 
                                        :subtitle,
                                        :body)
    end 
end
