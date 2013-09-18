include_recipe "pivotal_workstation::rbenv"
node['rbenv']['rubies'].each do |rb_version, rb_opt|

  node['rbenv']['extra_gems'].each do |gem_name|
    execute "RBENV_VERSION=#{rb_version} gem install #{gem_name}" do
      user node['current_user']
      path ["#{ENV['HOME']}/.rbenv/shims","#{ENV['HOME']}/.rbenv/bin"]
      not_if "RBENV_VERSION=#{rb_version} gem list | grep #{gem_name}"
    end

  end
end
