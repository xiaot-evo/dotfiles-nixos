{
  description = "XiaoT_Evo's NixOS configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    # nixpkgs.url = "https://mirrors.ustc.edu.cn/nix-channels/nixos-unstable/nixexprs.tar.xz";
    # home-manager.url = "github:nix-community/home-manager/release-24.11";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    zen-browser = {
      url = "github:0xc000022070/zen-browser-flake";
      # IMPORTANT: we're using "libgbm" and is only available in unstable so ensure
      # to have it up to date or simply don't specify the nixpkgs input
      inputs.nixpkgs.follows = "nixpkgs";
    };
    hyprland.url = "github:hyprwm/Hyprland";

    hyprland-plugins = {
      url = "github:hyprwm/hyprland-plugins";
      inputs.hyprland.follows = "hyprland"; # Prevents version mismatch.
    };
    ags = {
      url = "github:aylur/ags";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    hyprpanel = {
      url = "github:jas-singhfsu/hyprpanel";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    # Neve = {
    #   url = "github:xiaoting120/Neve";
    #   inputs.nixpkgs.follows = "nixpkgs";
    # };
  };
  outputs = inputs@{ nixpkgs, home-manager, ... }:
    let
      settings = {
        system = "x86_64-linux";
        username = "xiaoting";
        hostname = "nixos-acer";
      };
    in {
      nixosConfigurations = {
        ${settings.hostname} = nixpkgs.lib.nixosSystem {
          modules = [ ./hosts/${settings.hostname}/configuration.nix ];
          specialArgs = {
            inherit inputs;
            inherit settings;
          }; # this is the important part
        };
      };
      # Standalone home-manager configuration entrypoint.
      # 'home-manager switch --flake .#username
      homeConfigurations = {
        ${settings.username} = home-manager.lib.homeManagerConfiguration {
          pkgs = nixpkgs.legacyPackages.${settings.system};
          modules = [ ./home-manager/home.nix ];
          extraSpecialArgs = {
            inherit inputs;
            inherit settings;
          };
        };
      };
    };
}
