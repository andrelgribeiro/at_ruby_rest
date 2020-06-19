module BuscaRecursos
    class MetodosRest
      include HTTParty
      headers 'Content-Type' => 'application/json;charset=UTF-8'
      base_uri URL[NIVEL]['jsonplaceholder']

      def retorna_get(params) # :debug_output => $stdout
        response = self.class.get(ENDPOINT['apis'], query: params)
        ##print response
        response
      end

      def retorna_post(body)  # :debug_output => $stdout
        response = self.class.post(ENDPOINT['apis'], body: JSON.pretty_generate(body),  :debug_output => $stdout)
        #print response
        response
      end
      
    end
end