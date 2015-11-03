class DriversPageController < ApplicationController
    def index
        @orders = Order.all
    end
    
    def accept
       @orders = Order.all
    end
    
    def acceptOrders
        @workaround = params[:selectedOrders]
        if @workaround != nil
            @workaround.each do |x|
                 Order.update(x[0], :acceptedByID => Rails.application.config.currUserID)
            end
        end
        redirect_to '/drivers/accept'
    end
end
