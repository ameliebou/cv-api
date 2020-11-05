class Api::V1::ContactsController < Api::V1::BaseController
  before_action :set_resume

  def index
    @contacts = policy_scope(Contact).where(resume: @resume)
  end

  private

  def set_resume
    @resume = Resume.find(params[:resume_id])
  end
end
