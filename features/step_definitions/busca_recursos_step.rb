Dado("que eu tenha um payload padrão e válido para busca de recursos") do
  @massa_req = YAML.load_file("#{PATH_MASSA}busca_recursos_massa.yml")
  @massa_yml = @massa_req[NIVEL]
  @payload_req = YAML.load_file("#{PATH_PAYLOADS}busca_recursos_payload.yml")
end

Quando("é enviada uma requisição para busca de recursos GET") do
  @response_body = busca_recursos.retorna_get(@payload_req['cenario1'])
end

Quando("é enviada uma requisição para busca de recursos POST") do
  userId = rand(9977..99999)
  @payload_req['cenario2']['userId'] = userId
  @response_body = busca_recursos.retorna_post(@payload_req['cenario2'])
end

Então("os dados do busca de recursos GET serão exibidos no response com sucesso") do
  expect(@response_body[0]['userId'].to_s).to eql(@massa_yml['cenario1']['userId'].to_s)
  expect(@response_body[0]['title'].to_s).to include(@massa_yml['cenario1']['title'].to_s)
  expect(@response_body[0]['id'].to_s).to eql(@massa_yml['cenario1']['id'].to_s)
end

Então("os dados do busca de recursos POST serão exibidos no response com sucesso") do
  expect(@response_body['tle'].to_s).to include(@massa_yml['cenario2']['tle'].to_s)
  expect(@response_body['body'].to_s).to include(@massa_yml['cenario2']['body'].to_s)
end

E("o código de resposta deve ser {int} no serviço") do |status_code|
  expect(@response_body.code).to eql status_code
end