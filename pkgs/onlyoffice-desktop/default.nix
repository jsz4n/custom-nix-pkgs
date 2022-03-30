
{ pkgs ? import <nixpkgs> {} }:

# url = https://github.com/ONLYOFFICE/DesktopEditors/releases/download/v7.0.1/DesktopEditors-x86_64.AppImage
pkgs.appimageTools.wrapType2 {
    name = "onlyoffice-desktop";
    src = pkgs.fetchurl {
        url = "https://github.com/ONLYOFFICE/DesktopEditors/releases/download/v7.0.1/DesktopEditors-x86_64.AppImage";
        sha256 = "d50a524c6b8f8aa25f7847e523f6821fd8e8d174cd9b5d4b08770cda0f719006";
    };
    extraPkgs = pkgs: with pkgs; [ ];
}

