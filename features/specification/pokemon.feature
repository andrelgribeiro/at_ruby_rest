#language:pt
@pokemon

Funcionalidade: AUT [BuscaRecursos] Serviço - busca de recursos
  Quero:  Testar todos os métodos de Busca de Recursos
  Para:  Garantir que todas as situações possiveis estejam funcionando
  Critérios de aceite:  Todos os métodos retornando 200

  @pokemon_get @marcy
  Cenario: Validação do retorno da API busca GET com sucesso
    Dado que eu tenha um payload padrão e válido para busca
    Quando é enviada uma requisição para busca GET
    Então os dados do busca GET serão exibidos no response com sucesso
    E o código de resposta deve ser 200 no serviço

   