class InvitationsController < ApplicationController
  before_action :set_invitation, only: [:show, :edit, :update, :destroy]

  # GET /invitations
  # GET /invitations.json
  def index
  end

  # GET /invitations/1
  # GET /invitations/1.json
  def show
  end

  # GET /invitations/new
  def new
    @invitation = Invitation.new
  end

  # GET /invitations/1/edit
  def edit
  end

  # POST /invitations
  # POST /invitations.json
  def create
    @invitations = Invitation.new(trip_id, email)
    if @invitations.save
    UserInviteMailer.invite_email(@trip, @guest_name , @email).deliver_now
  end

  # PATCH/PUT /invitations/1
  # PATCH/PUT /invitations/1.json
  def update
  end

  # DELETE /invitations/1
  # DELETE /invitations/1.json
  def destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_invitation
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def invitation_params
      params.fetch(:invitation, {})
    end
end
