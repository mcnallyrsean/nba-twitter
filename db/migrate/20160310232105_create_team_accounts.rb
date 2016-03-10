class CreateTeamAccounts < ActiveRecord::Migration
  def change
    create_table :team_accounts do |t|
      t.string :name
      t.string :description
      t.string :handle
      t.integer :twitter_id
      t.string :url
      t.string :profile_image_url

      t.timestamps null: false
    end
  end
end
