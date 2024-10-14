require 'swagger_helper'

RSpec.describe 'Stores API', type: :request do
  path '/api/v1/stores' do
    get 'Listar tiendas cercanas' do
      tags 'Stores'
      produces 'application/json'
      parameter name: :latitude, in: :query, type: :number, description: 'Latitud del usuario'
      parameter name: :longitude, in: :query, type: :number, description: 'Longitud del usuario'

      response '200', 'Lista de tiendas' do
        schema type: :array, items: {
          type: :object,
          properties: {
            id: { type: :integer },
            name: { type: :string },
            address: { type: :string },
            latitude: { type: :number },
            longitude: { type: :number }
          },
          required: [ 'id', 'name', 'address', 'latitude', 'longitude' ]
        }
        run_test!
      end
    end
  end
end
