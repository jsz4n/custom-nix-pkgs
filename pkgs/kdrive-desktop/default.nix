{ pkgs ? import <nixpkgs> {} }:

pkgs.appimageTools.wrapType2 {
    name = "kdrive-desktop";
    src = pkgs.fetchurl {
        url = "https://download.storage.infomaniak.com/drive/desktopclient/kDrive-3.3.3.20220324.AppImage";
        sha256 = "f96205e1c4933e73ea8dcacceb14f0d8443e9f4a4d2f73414aac9f0549f1fbec";
    };
    extraPkgs = pkgs: with pkgs; [ ];
}
