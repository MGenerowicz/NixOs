{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "generowicz";
  home.homeDirectory = "/home/generowicz";

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "21.11";

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
  home.packages = with pkgs; [
  
  fd                    # better find
  bat                   # better cat
  du-dust               # better du
  exa                   # better ls
  tldr                  # alternative to drinking from `man` fire hose

  
  
  # Browsers
  brave
  #Firefox
  
  ];
  
}
