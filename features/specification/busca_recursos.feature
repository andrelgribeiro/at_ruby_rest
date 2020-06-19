#language:pt
@busca_recursos

Funcionalidade: AUT [BuscaRecursos] Serviço - busca de recursos
  Quero:  Testar todos os métodos de Busca de Recursos
  Para:  Garantir que todas as situações possiveis estejam funcionando
  Critérios de aceite:  Todos os métodos retornando 200

  @busca_recursos_get
  Cenario: Validação do retorno da API busca de recursos GET com sucesso
    Dado que eu tenha um payload padrão e válido para busca de recursos
    Quando é enviada uma requisição para busca de recursos GET
    Então os dados do busca de recursos GET serão exibidos no response com sucesso
    E o código de resposta deve ser 200 no serviço

  @busca_recursos_post
  Cenario: Validação do retorno da API busca de recursos GET com sucesso
    Dado que eu tenha um payload padrão e válido para busca de recursos
    Quando é enviada uma requisição para busca de recursos POST
    Então os dados do busca de recursos POST serão exibidos no response com sucesso
    E o código de resposta deve ser 201 no serviço    