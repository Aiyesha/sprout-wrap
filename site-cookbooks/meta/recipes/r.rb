include_recipe "sprout-osx-apps::xquartz"

brew "gfortran"
homebrew_tap "homebrew/science"
brew "r" do
  options "--env=std"
end
