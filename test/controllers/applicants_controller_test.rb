require "test_helper"

class Applicants::RegistrationsControllerTest < ActionDispatch::IntegrationTest
  fixtures :applicants

  test "should get sign up page" do
    get new_applicant_registration_path
    assert_response :success
  end

  test "should create applicant" do
    applicant1_attrs = {
          email: "patricia.comunello@jcrs.com",
          password: "Senha235!",
          password_confirmation: "Senha235!",
          full_name: "Patricia Comunello",
          cellphone: "51999999996",
          type_of_applicant: "Jornalista profissional",
          associated: true
    }
    post applicant_registration_path, params: { applicant: applicant1_attrs }

            puts response.body

    assert_response :redirect
    follow_redirect!
    # assert_select "div", /Cadastro realizado com sucesso/
  end

  test "should not create applicant with duplicate email" do
    applicant2_attrs = {
          email: "alberi@gzh.com",
          password: "Senha237!",
          password_confirmation: "Senha237!",
          full_name: "Alberi Net",
          cellphone: "51999999986",
          type_of_applicant: "Jornalista profissional",
          associated: true
    }
    post applicant_registration_path, params: { applicant: applicant2_attrs }

    post applicant_registration_path, params: {
      applicant: {
        email: "alberi@gzh.com",
        password: "Senha123!",
        password_confirmation: "Senha123!",
        full_name: "Outro nome",
        cellphone: "51988888888",
        type_of_applicant: "Jornalista profissional",
        associated: true
      }
    }
    assert_response :success
    assert_select "div#error_explanation", /E-mail já está em uso/
  end
end