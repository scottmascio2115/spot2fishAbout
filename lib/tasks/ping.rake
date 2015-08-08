namespace :ping do
  desc "ping sites"
  task :sites => :environment do
    require 'net/ping'

    # sites = ['http://angular.spot2fish.com/#!/', 'http://tantori.herokuapp.com/', 'http://about.spot2fish.com/']
    #
    # sites.each do |site|
    #   status = Net::Ping::HTTP.new(site)
    #   p status.ping
    # end
  end
end
