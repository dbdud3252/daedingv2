class SubmitsController < ApplicationController
  before_action :authenticate_user!

  def index
    @submits = Submit.all.order('created_at desc')
    @submits_count = current_user.submits.length
  end

  def new
  end

  def create
    new_submit = Submit.new(user_id: current_user.id, content: params[:content])

    if new_submit.save
      redirect_to submits_path
    else
      redirect_to new_submit_path
    end
  end

end
