{
  description = "XiaoT_Evo's NixOS configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    niri = {
      url = "github:sodiboo/niri-flake";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    zen-browser = {
      url = "github:0xc000022070/zen-browser-flake";
      # IMPORTANT: we're using "libgbm" and is only available in unstable so ensure
      # to have it up-to-date or simply don't specify the nixpkgs input
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };
  outputs =
    inputs@{
      self,
      nixpkgs,
      home-manager,
      ...
    }:
    let
      settings = rec {
        system = "x86_64-linux";
        username = "xiaoting";
        hostname = "nixos-acer";
        self = "/home/${hostname}/NixOS";
      };
    in
    {
      # Configurations
      nixosConfigurations = {
        nixos-acer = nixpkgs.lib.nixosSystem {
          modules = [ ./hosts/nixos-acer/configuration.nix ];
          specialArgs = {
            inherit inputs;
            inherit settings;
            inherit self;
          }; # this is the important part
        };
      };
      # Standalone home-manager configuration entrypoint.
      # 'home-manager switch --flake .#username
      homeConfigurations = {
        xiaoting = home-manager.lib.homeManagerConfiguration {
          pkgs = nixpkgs.legacyPackages.${settings.system};
          modules = [ ./hosts/nixos-acer/home.nix ];
          extraSpecialArgs = {
            inherit inputs;
            inherit settings;
            inherit self;
          };
        };
      };
    };
}
