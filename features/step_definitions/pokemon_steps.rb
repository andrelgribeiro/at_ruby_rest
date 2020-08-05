# encoding: UTF-8

  Dado("que eu tenha um payload padrão e válido para busca") do
    @massa_yml = YAML.load_file("#{PATH_MASSA}pokemon_massa.yml")
    @payload_req = YAML.load_file("#{PATH_PAYLOADS}pokemon_payload.yml")
  end
  
  Quando("é enviada uma requisição para busca GET") do
    @response_body = pokemon_rest.retorna_get
  end
  
  #Quando("é enviada uma requisição para busca de recursos POST") do
  #  userId = rand(9977..99999)
  #  @payload_req['cenario2']['userId'] = userId
  #  @response_body = busca_recursos.retorna_post(@payload_req['cenario2'])
  #end
  
  Então("os dados do busca GET serão exibidos no response com sucesso") do
    expect(@response_body[0]['effect'].to_s).to eql(@massa_yml['cenario1']['effect'].to_s)
    expect(@response_body[0]['short_effect'].to_s).to include(@massa_yml['cenario1']['short_effect'].to_s)
    #expect(@response_body[0]['id'].to_s).to eql(@massa_yml['cenario1']['id'].to_s)
  end
  
  #Então("os dados do busca de recursos POST serão exibidos no response com sucesso") do
  # expect(@response_body['tle'].to_s).to include(@massa_yml['cenario2']['tle'].to_s)
  # expect(@response_body['body'].to_s).to include(@massa_yml['cenario2']['body'].to_s)
  #end
  
  E("o código de resposta deve ser {int} no serviço") do |status_code|
    expect(@response_body.code).to eql status_code
  end