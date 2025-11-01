{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nvf.url = "github:notashelf/nvf";
  };

  outputs =
    {
      self,
      nixpkgs,
      nvf,
      ...
    }@inputs:
    let
      pkgs_x86 = nixpkgs.legacyPackages.x86_64-linux;
    in
    {
      packages.x86_64-linux =
        let
          pkgs = pkgs_x86;
        in
        {
          default =
            (nvf.lib.neovimConfiguration {
              pkgs = pkgs;
              modules = [ ./config/default.nix ];
            }).neovim;
        };

      formatter = {
        x86_64-linux = pkgs_x86.nixfmt-tree;
      };
    };
}
