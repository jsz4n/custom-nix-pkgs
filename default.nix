{ system ? builtins.currentSystem }:

let
    nixpkgs = import <nixpkgs> { inherit system; };
    allPkgs = nixpkgs // pkgs;
    # maintainers = nixpkgs.lib.mkMerge(nixpkgs.lib.maintainers (import ./maintainers));
    maintainers = nixpkgs.lib.maintainers // (import ./maintainers);

    callPackage = path: overrides:
        let f = import path;
        in f ((builtins.intersectAttrs (builtins.functionArgs f) allPkgs)  // overrides);

    pkgs = with nixpkgs; {
        kdrive-desktop = callPackage ./pkgs/kdrive-desktop {};
        onlyoffice-desktop = callPackage ./pkgs/onlyoffice-desktop {};
    };
in pkgs
