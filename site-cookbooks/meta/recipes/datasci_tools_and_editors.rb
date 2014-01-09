include_recipe "pivotal_workstation::screen_sharing_app"
include_recipe "sprout-osx-apps::keycastr"
include_recipe "sprout-osx-apps::shiftit"
include_recipe "pivotal_workstation::mouse_locator"
#include_recipe "meta::activate_mouse_locator"

include_recipe "sprout-osx-apps::iterm2"
include_recipe "meta::lock_cmd"

include_recipe "sprout-osx-apps::macvim"
#include_recipe "pivotal_workstation::vim_config"
include_recipe "sprout-osx-apps::ctags_exuberant"
include_recipe "pivotal_workstation::unix_essentials"  #ack, tmux, xquartz, watch, ssh-copy-id, pstree, tree, wget
include_recipe "meta::create_gvimrc_local"
include_recipe "meta::julia_vim"

include_recipe "sprout-osx-apps::rubymine"
#include_recipe "sprout-osx-rubymine::preferences"

#include_recipe "sprout-osx-apps::gpg"
#include_recipe "sprout-osx-apps::gpgtools"

include_recipe "sprout-osx-apps::vagrant"
include_recipe "sprout-osx-apps::virtualbox"

include_recipe "meta::jsontool"
include_recipe "meta::smartdc"

# git
include_recipe "pivotal_workstation::git_config_global_defaults"
include_recipe "sprout-osx-git::git_scripts"
include_recipe "pivotal_workstation::github_for_mac"
#include_recipe "sprout-osx-apps::gitx"
include_recipe "meta::gitx"
include_recipe "sprout-osx-apps::xquartz"
