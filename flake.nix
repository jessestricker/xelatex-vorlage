{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    utils.url = "github:numtide/flake-utils/v1.0.0";
  };

  outputs = {
    self,
    nixpkgs,
    utils,
  }:
    utils.lib.eachDefaultSystem (system: let
      pkgs = nixpkgs.legacyPackages.${system};
      texPkgs = pkgs.texlive.combine {
        inherit
          (pkgs.texlive)
          scheme-medium
          libertinus-otf
          libertinus-fonts
          cleveref
          datetime2
          ;
      };
    in {
      packages.default = pkgs.stdenv.mkDerivation {
        name = "xelatex-vorlage";
        src = self;
        buildInputs = [texPkgs];

        dontPatch = true;
        dontConfigure = true;
        dontFixup = true;

        buildPhase = ''
          runHook preBuild

          latexmk -xelatex \
            -file-line-error -halt-on-error -interaction=nonstopmode \
            -outdir="$PWD/build" -cd \
            ./src/root.tex

          runHook postBuild
        '';

        installPhase = ''
          runHook preInstall

          mkdir -p "$out"
          cp ./build/root.pdf "$out/"

          runHook postInstall
        '';
      };

      formatter = pkgs.alejandra;
    });
}
