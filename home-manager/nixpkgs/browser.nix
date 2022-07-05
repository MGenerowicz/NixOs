{ config, pkgs, ... }:

{
home.packages = with pkgs; [

    brave # Privacy-oriented browser for Desktop and Laptop computers
    vivaldi
    opera
    librewolf
    thunderbird
    chromium
 ];

}
