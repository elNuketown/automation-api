Dado("possuir um cep do tipo {string}") do |tipo|
  @via_cep = ViaCep.new
  @massa = MASSA['localizacao']
  @cep = tipo.eql?('valido') ? @massa['cep'] : '00000000'
end

Quando("enviar a requisição de consulta de cep na API Via Cep") do
  @response = @via_cep.get_location(@cep)
end

Então("devo obter um retorno {string} no API Via Cep") do |tipo|
  if tipo.eql?('valido')
    expect(@response['cep']).to eql(@massa['cep'])
    expect(@response['logradouro']).to eql(@massa['logradouro'])
    expect(@response['complemento']).to eql(@massa['complemento'])
    expect(@response['bairro']).to eql(@massa['bairro'])
    expect(@response['localidade']).to eql(@massa['localidade'])
    expect(@response['uf']).to eql(@massa['uf'])
    expect(@response['unidade']).to eql(@massa['unidade'])
    expect(@response['ibge']).to eql(@massa['ibge'])
    expect(@response['gia']).to eql(@massa['gia'])
    puts "IBGE: #{@response['ibge']}"
  else
    expect(@response['erro']).to be true
  end
end
