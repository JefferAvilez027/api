module Api
  module V1
    class StoresController < ApplicationController
      # GET /api/v1/stores
      def index
        if params[:latitude] && params[:longitude]
          # Buscar tiendas cercanas a las coordenadas proporcionadas
          @stores = Store.near([params[:latitude], params[:longitude]], 10) # 10 km de radio
        else
          # Devolver todas las tiendas si no se proporcionan coordenadas
          @stores = Store.all
        end
        render json: @stores
      end

      # GET /api/v1/stores/:id
      def show
        @store = Store.find(params[:id])
        render json: @store
      end
    end
  end
end
