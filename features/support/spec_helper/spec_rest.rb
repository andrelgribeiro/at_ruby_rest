module INSTANCIAS
  def busca_recursos
    BuscaRecursos::MetodosRest.new
  end
  def pokemon_rest
    Pokemon::PokemonRest.new
  end
end