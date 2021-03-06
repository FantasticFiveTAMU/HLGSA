class MembersController < ApplicationController
  before_filter :authenticate
  def new
    @member = Member.new
  end

  def index
    @members = Member.all
  end

  def show
    @member = Member.find(params[:id])
  end

  def create
    @member = Member.new(member_params)
    if @member.save
    	# Tell the UserMailer to send a welcome email after save
      EventMailer.welcome_mail(@member).deliver!
			flash[:notice] = "Member successfully created"
      redirect_to @member
    else
      render 'new'
    end
  end

  def edit
    @member = Member.find(params[:id])
  end

  def update
    @member = Member.find(params[:id])
    if @member.update_attributes(member_params)
    	EventMailer.welcome_mail(@member).deliver!
			flash[:notice] = "Member successfully updated"
      redirect_to @member
    else
      render 'edit'
    end
  end

  def destroy
    @member = Member.find(params[:id])
    @member.destroy
    redirect_to members_path
  end

  private
    def member_params
      params.require(:member).permit(:uin, :first_name, :last_name, :email, :department, :designation, :paying, :status)
    end

end
