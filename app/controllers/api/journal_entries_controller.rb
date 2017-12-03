class Api::JournalEntriesController < ApplicationController

  def index
    @user = User.find_by(id: params[:user_id])
    @journal_entries = @user.journal_entries.order(created_at: :desc)

    render json: @journal_entries
  end

  def create
    @journal_entry = JournalEntry.new(journal_params)

    if @journal_entry.save
      render json: {journal_entry: @journal_entry}
    else
      render json: {errors: @journal_entry.errors.full_messages}, status: 422
    end
  end

  private

  def journal_params
    params.require(:journal_entry.permit(:content))
  end

end