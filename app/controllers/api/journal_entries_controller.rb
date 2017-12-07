class Api::JournalEntriesController < ApplicationController
  protect_from_forgery with: :null_session

  # before_action :authenticate_user

  def index
    @user = User.find_by(id: params["user_id"])
    @journal_entries = @user.journal_entries.order(created_at: :desc)

    render json: @journal_entries
  end

  def create
    @user = User.find_by(id: params[:user_id])
    @journal_entry = JournalEntry.new(journal_params)
    @journal_entry.user = @user

    if @journal_entry.save
      render json: {journal_entry: @journal_entry}
    else
      render json: {errors: @journal_entry.errors.full_messages}, status: 422
    end
  end

  private

  def journal_params
    params.require(:journal_entry).permit(:content)
  end

end
