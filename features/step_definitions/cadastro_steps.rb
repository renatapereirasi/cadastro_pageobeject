Dado('que eu esteja na pagina da loja Automation Practice') do
  @preenchimento = Cadastro.new
  @preenchimento.load
end

Quando('eu efetuar o cadastro com sucesso') do
  @preenchimento.registration
  @preenchimento.registration_data
  @preenchimento.registration_other_data
  @preenchimento.address_information
  @preenchimento.address_extra_information
end

Entao('verei a mensagem {string}') do |mensagem_validacao|
  @sucesso = Cadastro.new.validacao_cadastro_txt
  expect(mensagem_validacao).to eq(@sucesso.text)
end
