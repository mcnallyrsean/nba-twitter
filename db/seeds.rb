# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

client = Twitter::REST::Client.new do |config|
  config.consumer_key = ENV["TWITTER_CONSUMER_KEY"]
  config.consumer_secret = ENV["TWITTER_CONSUMER_SECRET"]
  config.access_token = ENV["TWITTER_ACCESS_TOKEN"]
  config.access_token_secret = ENV["TWITTER_ACCESS_SECRET"]
end

teams = client.list_members(3738526)

teams.each do |team|
  TeamAccount.create(
    name: team.name,
    description: team.description,
    handle: team.screen_name,
    twitter_id: team.id,
    url: team.url,
    profile_image_url: team.profile_image_uri_https(size = :original)
    )
end
