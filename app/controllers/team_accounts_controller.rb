class TeamAccountsController < ApplicationController
  def index
    @team_accounts = TeamAccount.all
  end

  def show
    @team_account = TeamAccount.find_by(id: params[:id])
  end
end
