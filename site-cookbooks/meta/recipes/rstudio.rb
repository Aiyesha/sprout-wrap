dmg_package "RStudio" do
  volumes_dir "RStudio-0.98.490"
  source "http://download1.rstudio.org/RStudio-0.98.490.dmg"
  checksum "6d89dcb626ba38142c5ea91e46755da4"
  action :install
  owner node['current_user']
end
