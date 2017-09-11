module Admin
  class SurveysController < DashboardController
  before_action :set_survey, only: [:edit, :update, :destroy]

  def index
    @survey = Survey.all
  end

  def new
    @survey = Survey.new
  end

  def create
    @survey = Survey.new(survey_params)

    if @survey.save
      redirect_to edit_admin_survey_path(@survey), notice: 'Formulario creado con éxito.'
    else
      render :new
    end
  end

  def edit

  end

  def update
    if @survey.update(survey_params)
      redirect_to edit_admin_survey_path(@survey), notice: 'Formulario actualizado.'
    else
      render :edit
    end
  end

  def destroy
    @survey = Survey.find_by(id: params[:id])
    @survey.destroy
    redirect_to admin_surveys_path, notice: 'Acción completada con éxito'
  end

  private
  def set_survey
    @survey = Survey.find_by(id: params[:id])
  end

  def survey_params
    params.require(:survey).permit(
        :name, :description, :expiration,
        :questions_attributes => [
            :id,
            :name,
            :question_type,
            :description,
            :_destroy,
            :answers_attributes => [:id, :content, :_destroy]
        ]
    )
  end
end
end