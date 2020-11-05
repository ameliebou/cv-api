class Api::V1::LanguagesController < Api::V1::BaseController
  before_action :set_resume

  def index
    @languages = policy_scope(Language).where(resume: @resume)
  end

  private

  def set_resume
    @resume = Resume.find(params[:resume_id])
  end
end
