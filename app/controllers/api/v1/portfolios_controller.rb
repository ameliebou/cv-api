class Api::V1::PortfoliosController < Api::V1::BaseController
  before_action :set_resume

  def index
    @portfolios = policy_scope(Portfolio).where(resume: @resume)
  end

  private

  def set_resume
    @resume = Resume.find(params[:resume_id])
  end
end
