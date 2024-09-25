{
  description = "A flake with a development shell for MkDocs Material";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";

  outputs = { nixpkgs, ... }: {
    devShells.x86_64-linux =
    let
      pkgs = nixpkgs.legacyPackages.x86_64-linux;
    in
    {
      default = pkgs.mkShell {
        packages = [
          pkgs.python3Packages.mkdocs
          pkgs.python3Packages.mkdocs-material
        ];
      };
    };
  };
}
