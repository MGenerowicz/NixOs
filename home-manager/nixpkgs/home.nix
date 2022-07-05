{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "generowicz";
  home.homeDirectory = "/home/generowicz";
  
  nixpkgs.config.allowUnfree = true;

  imports =
    [
./pentest.nix
./browser.nix
    ];


  home.packages = with pkgs; [
    ripgrep  ripgrep-all  # better grep + find
    fd                    # better find
    bat                   # better cat
    du-dust               # better du
    exa                   # better ls
    tldr                  # alternative to drinking from `man` fire hose 
    github-cli # git and git-lfs enabled below
    filezilla     
    rlwrap      # add readline capabilities to crappy shells
    mosh        # more robust alternative to ssh
    kitty
    neofetch
    pingus
    gnupg
   # Productivity
    wally-cli    
    libreoffice-fresh # Comprehensive, professional-quality productivity suite, a variant of openoffice.org
    zsa-udev-rules
     
   #White-Noise / Background noise
    blanket
     
    # jetbrains.pycharm-community # Python IDE with complete set of tools for productive development with Python programming language
   
   #Communication
    signal-desktop
    discord-canary
    element
    teams

   #Network
    dsniff
    wireshark
    nmap 

   #Password Management
    bitwarden
   #crypto
   ledger-live-desktop
   binance
   monero-gui
   monero-cli
   electrum

   #Support

   bitwarden
   thefuck
   unrar
   xz
   hyperfine # benchmarking tool
   unrar # extract RAR archives
   xz # extract XZ archives
   comma # run software from without installing it
   bandwhich # display current network utilization by process
   bottom # fancy version of `top` with ASCII graphs  
   #Dev -package build   
   protonvpn-gui
   dropbox
   vlc
   haruna
#pentest

dsniff
wireshark
nmap
lynis
#Security 
];

 nixpkgs.config.permittedInsecurePackages = [
    "electron-13.6.9"
              

];

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
}
