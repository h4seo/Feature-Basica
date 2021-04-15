module Actions
  def cad(user)
    find("#customer_firstname").set user[:pri_nome]
    find("#customer_lastname").set user[:sob_nome]
    find("#email").set user[:email]

    find("#passwd").set user[:senha]

    find("#uniform-days").select user[:d_birth] if user[:d_birth].length > 0

    find("#uniform-months").select user[:m_birth] if user[:m_birth].length > 0

    find("#uniform-years").select user[:a_birth] if user[:a_birth].length > 0

    find("input[name ='firstname']").set user[:add_name]
    find("input[name ='lastname']").set user[:add_sobr]
    find("#company").set user[:add_emp]
    find("#address1").set user[:add_end_1]
    find("#city").set user[:add_city]
    find("#uniform-id_state").select user[:add_state] if user[:add_state].length > 0
    find("#postcode").set user[:add_cep]
    find("#other").set user[:add_info]
    find("#phone_mobile").set user[:add_cel]
    find("#alias").set user[:add_alt]

    click_on "Register"
  end
end
