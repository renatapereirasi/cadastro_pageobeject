# editar cadastro
class Edicao < SitePrism::Page
  set_url 'http://automationpractice.com'

  element :click_signin_btn, 'a.login'
  element :email_cadastrado_txt, '#email'
  element :password_txt, '#passwd'
  element :click_submit_btn, '#SubmitLogin'
  element :click_edition_btn, '.icon-user'
  element :select_option_check, '#uniform-id_gender2'
  element :select_option_date, "#days option[value='18']"
  element :select_option_month, "#uniform-months option[value='3']"
  element :select_option_years, "#uniform-years option[value='1992']"
  element :current_password_txt, '#old_passwd'
  element :click_save_btn, "button[name='submitIdentity']"
  element :validation_editing_txt, '.alert.alert-success'

  def login
    click_signin_btn.click
    email_cadastrado_txt.set 'yodinha34@mailinator.com'
    password_txt.set 'Teste123'
    click_submit_btn.click
    click_edition_btn.click
  end

  def edition
    select_option_check.click
    select_option_date.click
    select_option_month.click
    select_option_years.click
  end

  def extra_edition
    current_password_txt.set 'Teste123'
    click_save_btn.click
  end
end
