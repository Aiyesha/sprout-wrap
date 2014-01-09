include_recipe "sprout-osx-base::bash_it"
template "/Users/#{node['current_user']}/.bash_it/aliases/custom.aliases.bash" do
  source 'custom.aliases.bash'
  owner node['current_user']
  mode 0644
end
