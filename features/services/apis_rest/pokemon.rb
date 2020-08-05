module Pokemon
    class PokemonRest
      include HTTParty
      headers 'Content-Type' => 'application/json;charset=UTF-8'
      base_uri URL[NIVEL]['pokemon']

      def retorna_get() # :debug_output => $stdout
        response = self.class.get(ENDPOINT['/api/v2/ability/150/'])
        ##print response
        response
      end
     
    end
end