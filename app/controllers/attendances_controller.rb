class AttendancesController < ApplicationController
  before_action :set_attendance, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @attendances = Attendance.all.reverse
    respond_with(@attendances)
  end

  def show
    respond_with(@attendance)
  end

  def new
    @attendance = Attendance.new
    @events = Event.all.reverse_order
    @users = User.where.not(user_status: 'current brother', confirmed_brother: true)
    respond_with(@attendance)
  end

  def edit
    @events = Event.all.reverse_order
    @users = User.where.not(user_status: 'current brother')
  end

  def create
    @attendance = Attendance.new(attendance_params)
    flash[:notice] = 'Attendance was successfully created.' if @attendance.save
    create_attendance_users
    respond_with(@attendance)
  end

  def update
    flash[:notice] = 'Attendance was successfully updated.' if @attendance.update(attendance_params)
    create_attendance_users
    respond_with(@attendance)
  end

  def destroy
    @attendance.destroy
    respond_with(@attendance)
  end

  private
    def create_attendance_users
      @users = User.where(id: params[:user_ids])
      @attendance.users.delete
      @attendance.users << @users
    end
    def set_attendance
      @attendance = Attendance.find(params[:id])
    end

    def attendance_params
      params.require(:attendance).permit(:event_id)
    end
end
