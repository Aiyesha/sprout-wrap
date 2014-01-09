brew "rbenv"
brew "ruby-build"

node['rbenv']['rubies'].each do |rver, ropt|
  bash "install #{rver}" do
    code <<-EOB
    export HOME="#{ENV['HOME']}"
    export USER="#{node['current_user']}"
    export PATH="#{ENV['HOME']}/.rbenv/shims:/usr/local/bin:/usr/bin:/bin"
    export RBENV_ROOT="#{ENV['HOME']}/.rbenv"
    eval "$(rbenv init -)"    
    rbenv install #{rver}
    EOB
    user node['current_user']
    environment 'PATH' => "#{ENV['HOME']}/.rbenv/shims:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin",
                'HOME' => ENV['HOME'],
                'USER' => node['current_user']
    path ['/usr/local/bin','/usr/bin','/bin','/usr/sbin','/sbin']
    cwd ENV['HOME']
    flags "-l"
    creates "#{ENV['HOME']}/.rbenv/versions/#{rver}"
  end
end

default_ruby = node['rbenv']['default_ruby']
execute "echo '#{default_ruby}' > #{ENV['HOME']}/.rbenv/version" do
  user node['current_user']
  cwd ENV['HOME']
  environment 'PATH' => '/usr/local/bin:/usr/bin:/usr/sbin:/sbin',
              'HOME' => ENV['HOME'],
              'USER' => node['current_user']
  only_if { `rbenv global | grep '#{default_ruby}'`.empty? }
end

