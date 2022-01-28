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
   
    ripgrep  ripgrep-all  # better grep + find
    fd                    # better find
    bat                   # better cat
    du-dust               # better du
    exa                   # better ls
    tldr                  # alternative to drinking from `man` fire hose 
    
    github-cli # git and git-lfs enabled below
     
    rlwrap      # add readline capabilities to crappy shells
    mosh        # more robust alternative to ssh
     
    neofetch
      
    # Productivity
    
     libreoffice-fresh # Comprehensive, professional-quality productivity suite, a variant of openoffice.org
     
     atlassian-jira
     
     #White-Noise / Background noise
     blanket
     
    # jetbrains.pycharm-community # Python IDE with complete set of tools for productive development with Python programming language
   
    #Communication
     signal-desktop
     discord
    
    #browser
     brave # Privacy-oriented browser for Desktop and Laptop computers
     vivaldi
     opera
    #General Networking / Security / Audit    

   #Portscaners
    nmap

   #Network Sniffers
    dsniff
    wireshark 
   

   #Password Management
    bitwarden
];
  programs.git = {
    enable = true;
    lfs.enable = true;
  };


}
