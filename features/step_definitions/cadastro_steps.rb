Dado('que eu esteja na pagina da loja Automation Practice') do
  visit 'http://automationpractice.com'
end

Quando('eu efetuar o cadastro com sucesso') do
  find('a.login').click
  fill_in('email_create', with: 'yodinha7@mailinator.com')
  click_button('SubmitCreate')
  assert_text('CREATE AN ACCOUNT')
  fill_in('customer_firstname', with: 'Renata')
  fill_in('customer_lastname', with: 'Pereira')
  fill_in('passwd', with: 'Teste123')
  fill_in('firstname', with: 'Jim')
  fill_in('lastname', with: 'Morrison')
  fill_in('address1', with: 'Av Rotary 600')
  fill_in('city', with: 'São Bernardo do Campo')
  find(".id_state option[value='10']").select_option
  fill_in('postcode', with: '09721')
  fill_in('other', with: '05511976258935')
  fill_in('phone', with: '5511971945915')
  fill_in('phone_mobile', with: '5549306003')
  click_button('submitAccount')
end

Entao('as informações cadastradas serão exibidas') do
  click_link('My personal information')
  assert_text('YOUR PERSONAL INFORMATION')
end
# Editar
Dado('que eu esteja logado com usuário válido no site Automation Practice') do
  visit'http://automationpractice.com'
  find('a.login').click
  assert_text('Authentication')
  find('#email').set('yodinha6@mailinator.com')
  fill_in('passwd', with: 'Teste123')
  click_button('SubmitLogin')
end

Quando('acessar e editar as informações pessoais') do
  click_link('My personal information')
  find('#uniform-id_gender1').click
  find("#days option[value='18']").select_option
  find("#uniform-months option[value='3']").select_option
  find("#uniform-years option[value='1992']").select_option
  fill_in('old_passwd', with: 'Teste123')
  find('#uniform-newsletter').select_option
  find('#uniform-optin').select_option
  click_button('Save')
  sleep 4
end

Entao('verei a mensagem {string}') do |mensagem|
  expect(mensagem).to eq('Your personal information has been successfully updated.')
end
