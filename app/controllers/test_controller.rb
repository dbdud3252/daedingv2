class TestController < ApplicationController
  def index
    @types = Type.all
    @smalltypes = Smalltype.where("type_id = ?", Type.first.id)
  end

  def show
    @smalltype = Smalltype.find_by("id = ?", params[:area][:smalltype_id])
  end

  def update_smalltypes
    @smalltypes = Smalltype.where("type_id = ?", params[:type_id])
    respond_to do |format|
      format.js
  end
end
end