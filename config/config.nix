{ pkgs, ... }:
{
  config.vim = {
    viAlias = true;
    vimAlias = true;

    clipboard = {
      enable = true;
      providers.wl-copy.enable = true;
      registers = "unnamedplus";
    };

    filetree.neo-tree.enable = true;
    treesitter.enable = true;

    binds = {
      whichKey.enable = true;
      cheatsheet.enable = true;
    };
  };
}
