template "#{ENV['HOME']}/.gvimrc.local" do
  source 'gvimrc.local'
  owner node['current_user']
  mode 0644
end

