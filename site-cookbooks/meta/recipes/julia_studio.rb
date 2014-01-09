dmg_package "JuliaStudio" do
  volumes_dir "julia-studio-macx-installer-0.4.3"
  dmg_name "julia-studio-macx-installer-0.4.3"
  source "https://s3.amazonaws.com/cdn-common.forio.com/julia-studio/0.4.3/julia-studio-macx-installer-0.4.3.dmg"
#  checksum "246e5d8fe237b6ca698568142273385fdebf22d60d85701da4400be7bc6d55e5"
  action :install
  owner node['current_user']
end
