Dado('que eu esteja logado com usuário válido no site Automation Practice') do
  @editando = Edicao.new
  @editando.load
end

Quando('acessar e editar as informações pessoais') do
  @editando.login
  @editando.edition
  @editando.extra_edition
end

Entao('verei a mensagem {string} de atualização.') do |mensage_validation|
  @sucesso = Edicao.new.validation_editing_txt
  expect(mensage_validation).to eq(@sucesso.text)
end
