Quando("preencho o campo email com:") do |table|
  user = table.rows_hash

  find("#email_create").set user[:email]

  click_button "Create an account"
end

Então("vejo a mensagem de alerta: {string}") do |alert|
  alerta = find("#create_account_error")
  expect(alerta.text).to eql alert
end

Quando("informo o email {string}") do |string|
  find("#email_create").set "teste007@teste.com"

  click_button "Create an account"
end

Então("sou redirecionado para o Cadastro.") do
  expect(page).to have_css "#customer_firstname"
end
