class Api::V1::SkillsController < Api::V1::BaseController
  before_action :set_resume

  def index
    @skills = policy_scope(Skill).where(resume: @resume)
  end

  private

  def set_resume
    @resume = Resume.find(params[:resume_id])
  end
end
