class RolesController < ApplicationController
  before_action :set_role, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @roles = Role.all
    respond_with(@roles)
  end

  def show
    respond_with(@role)
  end

  def new
    @role = Role.new
    respond_with(@role)
  end

  def edit
  end

  def create
    @role = Role.new(role_params)
    flash[:notice] = 'Role was successfully created.' if @role.save
    respond_with(@role)
  end

  def update
    flash[:notice] = 'Role was successfully updated.' if @role.update(role_params)
    respond_with(@role)
  end

  def destroy
    @role.destroy
    respond_with(@role)
  end

  private
    def set_role
      @role = Role.find(params[:id])
    end

    def role_params
      params.require(:role).permit(:name)
    end
end
