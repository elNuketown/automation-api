#language: pt
@consulta_cep
@vinicios_vicente
Funcionalidade: Consulta de CEP na API Via Cep

@consulta_cep
Esquema do Cenário: Consulta de CEP
    Dado possuir um cep do tipo "<tipo>"
    Quando enviar a requisição de consulta de cep na API Via Cep
    Então devo obter um retorno "<tipo>" no API Via Cep

    Exemplos:
      | tipo     |
      | valido   |
      | inválido |