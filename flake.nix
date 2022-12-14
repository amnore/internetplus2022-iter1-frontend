{
  outputs = { nixpkgs, ... }:
  let
    pkgs = nixpkgs.legacyPackages.x86_64-linux;
  in
  {
    devShell.x86_64-linux = with pkgs; mkShell {
      packages = [ nodejs nodePackages.prettier ];
    };
  };
}
