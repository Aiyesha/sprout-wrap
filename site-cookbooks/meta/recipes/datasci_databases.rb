include_recipe "pivotal_workstation::redis"
include_recipe "pivotal_workstation::mysql"
include_recipe "meta::create_mysql_users"
include_recipe "pivotal_workstation::postgres"

include_recipe "sprout-osx-apps::sequelpro"
