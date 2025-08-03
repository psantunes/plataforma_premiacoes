class ApplicantsController < ApplicationController
  def new
      @applicant = Applicant.new
  end

  def create
    @applicant = Applicant.new(applicant_params)
    @applicant.password = params[:applicant][:password] # Devise cuida da encriptação

    if @applicant.save
      redirect_to root_path, notice: "Cadastro realizado com sucesso!"
    else
      render :new
    end
  end

  private

  def applicant_params
    params.require(:applicant).permit(:full_name, :professional_name, :cellphone, :type_of_applicant, :associated, :email, :password)
  end
end
