# ruby
include_recipe "meta::install_rbenv_and_rubies"

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

