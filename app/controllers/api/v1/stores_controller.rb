class Api::V1::StoresController < ApplicationController
  before_action :set_store, only: [:show]

  def def index
    @stores = Store.all
  end
  

  def show
  end

  private

  def set_store
    @store = Store.find_by!(google_place_id: params[:id])
  end
end
