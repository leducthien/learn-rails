class VisitorsController < ApplicationController
  def new
    Rails.logger.debug 'Enter VisitorsController new method'
    @owner = Owner.new
    render 'visitors/new'
    Rails.logger.debug 'Exit VisitorsController new method'
    
  end

end
