class ViaCep
  include HTTParty
  default_options.update(verify: false)
  base_uri CONFIG['base_uri']

  def get_location cep
    self.class.get("/#{cep}/json/")
  end
end
