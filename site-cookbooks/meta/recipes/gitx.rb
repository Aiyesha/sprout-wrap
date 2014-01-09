dmg_package "GitX" do
  volumes_dir "GitX 0.14.95"
  dmg_name "GitX-dev"
  source "http://builds.phere.net/GitX/development/GitX-dev.dmg"
  action :install
  owner node['current_user']
end
