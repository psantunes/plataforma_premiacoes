class Applicants::RegistrationsController < Devise::RegistrationsController
  def new
    build_resource
  end

  def create
    build_resource(sign_up_params)

    if resource.save
      redirect_to root_path, notice: "Cadastro realizado com sucesso!"
    else
      clean_up_passwords resource
      render :new
    end
  end

  private

  def sign_up_params
    params.require(:applicant).permit(:full_name, :professional_name, :cellphone, :type_of_applicant, :associated, :email, :password, :password_confirmation)
  end
end
