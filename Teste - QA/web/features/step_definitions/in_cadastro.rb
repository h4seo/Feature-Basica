Dado("que acesso a página de cadastro interno") do
  visit "index.php?controller=authentication"

  find("#email_create").set "teste007@teste.com"

  click_button "Create an account"
end

Quando("preencho os campos com:") do |table|
  user = table.rows_hash

  cad(user)
end

Então("vejo o alerta: {string}") do |alert|
  alerta = find(".alert-danger")
  expect(alerta.text).to have_text alert
end

Quando("preencho os campos:") do |table|
  user = table.rows_hash

  cad(user)
end

Então("sou redirecionado para o Dashboard.") do
  expect(page).to have_css ".lnk_wishlist"
end
