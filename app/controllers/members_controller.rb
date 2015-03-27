class MembersController < ApplicationController
  def new
  end

  def create
    @member = Member.new(params.require(:member).permit(:uin, :first_name, :last_name, :email, :department, :designation, :paying))
    @member.save
    redirect_to @member
  end

  def show
    @member = Member.find(params[:id])
  end

end
