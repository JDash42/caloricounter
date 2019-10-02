class ActivitiesController < ApplicationController
  before_action :set_activity, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index]

  def index
    @activities = Activity.all
  end
 
  def show
  end
 
  def new
    @activity = Activity.new
  end
 
  def edit
  end
 
  def create
    @activity = Activity.new(activity_params)
    @activity.user_id = current_user.id
    respond_to do |format|
      if @activity.save
        format.html { redirect_to @activity, notice: 'activity was successfully created.' }
      else
        format.html { render action: 'new' }
      end
    end
  end
 
  def update
    respond_to do |format|
      if @activity.update(activity_params)
        format.html { redirect_to @activity, notice: 'activity was successfully updated.' }
      else
        format.html { render action: 'edit' }
      end
    end
  end
 
  def destroy
    @activity.destroy
    respond_to do |format|
      format.html { redirect_to activities_url }
    end
  end
 
  private
    def set_activity
      @activity = Activity.find(params[:id])
    end
 
    def activity_params
      params.require(:activity).permit(:number_calories, :ingest_or_burn, :description,:date)
    end  
    
end
