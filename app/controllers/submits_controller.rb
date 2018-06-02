class SubmitsController < ApplicationController
  before_action :authenticate_user!
  before_action :check_ownership, only: [:edit, :update, :destroy]


  def index
    @submits = Submit.all.order('created_at desc')
    @submits_count = current_user.submits.length
    
  end

  def new
  end

  def create
    new_submit = Submit.new(user_id: current_user.id, title: params[:title], content: params[:content])

    if new_submit.save
      redirect_to submits_path
    else
      redirect_to new_submit_path
    end
  end

  def edit

  end

  def update

    @submits.title = params[:title]
    @submits.content = params[:content]
    @submits.image   = params[:image] if params[:image].present?

    if @submits.save
        redirect_to "/submits"
    else
        render :edit
    end
  end

  def destroy
    @submits.destroy
    redirect_to "/submits"
  end

  private

  def check_ownership
      @submits = Submit.find_by(id: params[:id])
      redirect_to "/submits" if @submits.user.id != current_user.id
  end

end
