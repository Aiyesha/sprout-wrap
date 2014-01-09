dmg_package "Julia" do
  app "Julia-0.2.0"
  volumes_dir "Julia"
  dmg_name "julia-0.2"
  source "https://s3.amazonaws.com/julialang/bin/osx/x64/0.2/julia-0.2.dmg"
#  checksum "c6e5cf8ba49d3f995821864531a0f31a85bbc31b"
  action :install
  owner node['current_user']
end

