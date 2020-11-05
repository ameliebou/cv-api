class Api::V1::WorkingExperiencesController < Api::V1::BaseController
  before_action :set_resume

  def index
    @working_experiences = policy_scope(WorkingExperience).where(resume: @resume)
  end

  private

  def set_resume
    @resume = Resume.find(params[:resume_id])
  end
end
