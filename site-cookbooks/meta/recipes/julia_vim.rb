vimdir = "#{ENV['HOME']}/.vim"
vimbundle = "#{vimdir}/bundle"

directory vimdir do
  user node['current_user']
  action :create
end

directory vimbundle do
  user node['current_user']
  action :create
  only_if { File.directory?(vimdir) }
end

git "#{vimbundle}/julia-vim" do
  user node['current_user']
  repository "git@github.com:JuliaLang/julia-vim.git"
  action :sync
  only_if { File.directory?(vimbundle) }
end
