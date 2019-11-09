{
  edition = 201909;

  outputs = { self, nixpkgs }: {
    defaultPackage.x86_64-linux = import ./home-manager {
      pkgs = nixpkgs.legacyPackages.x86_64-linux;
      path = toString ./.;
    };
    nixosModules.home-manager = import ./nixos;
  };
}
