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

    options = {
      autoindent = false;
      number = true;
      relativenumber = true;
      cursorline = true;
      tabstop = 4;
      shiftwidth = 4;
      softtabstop = 4;
      wrap = false;
      swapfile = false;
      showmode = false;
      
    };
  };
}
