self: super:

with super.lib;

let
  fetchFont = super.callPackage ./fetch-font.nix { };

  default = {
    version = "2.1.0";
  };

  mapFont = { name, ... }@font: nameValuePair name (fetchFont (default // font));
  mapFonts = fonts: listToAttrs (map mapFont fonts);
in {
  nerd-fonts = mapFonts [
    {
      name = "fira-code";
      zipname = "FiraCode.zip";
      sha256 = "0nfxh0bzs68ljp0n4dcg0afsbpwjvc8m359ckrf2phd56gwmmmyd";
    }
    {
      name = "jetbrains-mono";
      zipname = "JetBrainsMono.zip";
      sha256 = "07xix6ck8v02nk021frs0dp441292d3pxbdfjjp9jndnjp0c6plk";
    }
  ];
}
