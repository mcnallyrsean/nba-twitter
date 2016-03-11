class TeamAccountsController < ApplicationController
  def index
    @team_accounts = TeamAccount.all
  end
end
