{ pkgs ? import <nixpkgs> {} }:

pkgs.appimageTools.wrapType2 {
    name = "balena-etcher";
    src = pkgs.fetchurl {
        url = "https://github.com/balena-io/etcher/releases/download/v1.7.9/balenaEtcher-1.7.9-x64.AppImage";
        sha256 = "vbecUJz36nzjozx2d3L7FC7HjJ8bYmaqyNgeHFxWAk8=";
    };
    extraPkgs = pkgs: with pkgs; [ ];
}

