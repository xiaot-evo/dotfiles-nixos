{
  description = "XiaoT_Evo's NixOS configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    zen-browser = {
      url = "github:0xc000022070/zen-browser-flake";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    niri = {
      url = "github:sodiboo/niri-flake";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    # ags = {
    #   url = "github:aylur/ags";
    #   inputs.nixpkgs.follows = "nixpkgs";
    # };
    # ags-gtk4 = {
    #   url = "github:acdcbyl/ags-gtk4";
    #   flake = false;
    # };
    nixvim = {
      url = "/home/xiaoting/Projects/Nix/nvim";
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
        ${settings.hostname} = nixpkgs.lib.nixosSystem {
          modules = [ ./hosts/${settings.hostname}/configuration.nix ];
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
        ${settings.username} = home-manager.lib.homeManagerConfiguration {
          pkgs = nixpkgs.legacyPackages.${settings.system};
          modules = [ ./home-manager/${settings.username}-home.nix ];
          extraSpecialArgs = {
            inherit inputs;
            inherit settings;
            inherit self;
          };
        };
      };
    };
}
