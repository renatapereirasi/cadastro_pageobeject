# cadastrar usuario
class Cadastro < SitePrism::Page
  set_url 'http://automationpractice.com'

  element :click_signin_btn, 'a.login'
  element :email_txt, '#email_create'
  element :click_registration_btn, '#SubmitCreate'
  element :customer_firstname_txt, '#customer_firstname'
  element :customer_lastname_txt, '#customer_lastname'
  element :password_txt, '#passwd'
  element :firstname_txt, '#firstname'
  element :lastname_txt, '#lastname'
  element :address_txt, '#address1'
  element :city_txt, '#city'
  element :state_txt, ".id_state option[value='10']"
  element :postcode_txt, '#postcode'
  element :phone_number_txt, '#phone'
  element :phone_mobile_number_txt, '#phone_mobile'
  element :click_register_btn, '#submitAccount'
  element :validacao_cadastro_txt, '.page-heading'

  def registration
    click_signin_btn.click
    email_txt.set 'yodinha34@mailinator.com'
    click_registration_btn.click
    page.has_content?('CREATE AN ACCOUNT')
  end

  def registration_data
    customer_firstname_txt.set 'Renata'
    customer_lastname_txt.set 'Pereira'
    password_txt.set 'Teste123'
  end

  def registration_other_data
    firstname_txt.set 'James'
    lastname_txt.set 'Morrison'
  end

  def address_information
    address_txt.set 'Avenida Rotary'
    city_txt.set 'Los Angeles'
    state_txt.click
    postcode_txt.set '09721'
  end

  def address_extra_information
    phone_number_txt.set '5511971945915'
    phone_mobile_number_txt.set '5549306003'
    click_register_btn.click
  end
end
