class Api::V1::EducationsController < Api::V1::BaseController
  before_action :set_resume

  def index
    @educations = policy_scope(Education).where(resume: @resume)
  end

  private

  def set_resume
    @resume = Resume.find(params[:resume_id])
  end
end
