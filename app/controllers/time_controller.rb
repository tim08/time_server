class TimeController < ApplicationController
  def index
    time_supplier = TimeSupplier.new(request.query_string)
    render :text => time_supplier.to_s
  end
end
