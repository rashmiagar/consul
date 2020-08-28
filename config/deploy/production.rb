set :branch, ENV["branch"] || :master

server deploysecret(:server1), user: deploysecret(:user), roles: %w[web app db importer cron background]
#server deploysecret(:server2), user: deploysecret(:user), roles: %w(web app db importer cron background)
#server deploysecret(:server3), user: deploysecret(:user), roles: %w(web app db importer)
#server deploysecret(:server4), user: deploysecret(:user), roles: %w(web app db importer)
set :ssh_options, {
   keys: %w("/mnt/c/Users/rashm/.ssh/consul1.pem"),
   forward_agent: true
 }