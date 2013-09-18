# ruby
include_recipe "pivotal_workstation::rbenv"
include_recipe "sprout-osx-apps::rubymine"
include_recipe "pivotal_workstation::gem_setup"  #setup /.gemrc ?
include_recipe "meta::add_extra_gems_to_all_rubies"

# python
include_recipe "meta::python"

# r
include_recipe "meta::r"
include_recipe "meta::rstudio"

# julia
include_recipe "meta::julia"
include_recipe "meta::julia_studio"

# lua
include_recipe "meta::lua"

# node.js
include_recipe "sprout-osx-apps::node_js"

