class HomeController < ApplicationController
  def index
    @stores = Store.ransack(description_cont: params[:keyword]).result
  end
end
