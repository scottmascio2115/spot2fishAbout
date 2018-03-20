namespace :ping do
  desc "ping sites"
  task :sites => :environment do
    require 'net/ping'

    sites = ['http://api.spot2fish.com/',
             'https://api.spot2fish.com/',
             'https://young-dawn-85853.herokuapp.com/',
             'http://young-dawn-85853.herokuapp.com/',
             'http://spot2fish.com/',
             'https://spot2fish.com/',
             'http://node.spot2fish.com/'
            ]

    sites.each do |site|
      status = Net::Ping::HTTP.new(site)
      p status.ping
    end
  end
end
