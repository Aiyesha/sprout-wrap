include_recipe "sprout-osx-base::workspace_directory"
include_recipe "pivotal_workstation::git_projects"

workspace_dir = "#{ENV['HOME']}/#{node['workspace_directory']}"
cookbooks_dir = "#{workspace_dir}/chef-repo/cookbooks"

directory cookbooks_dir do
  user node['current_user']
  action :create
end

node['data_science']['cookbooks'].each do |name|

  cookbook_repo = "#{workspace_dir}/datasci-#{name}-cookbook"
  if ! File.directory?(cookbook_repo)
    cookbook_repo = "#{workspace_dir}/#{name}-cookbook"
  end

  link "#{cookbooks_dir}/#{name}" do
    to cookbook_repo
    owner node['current_user']
    action :create
    only_if { File.directory?(cookbook_repo) }
  end

end

