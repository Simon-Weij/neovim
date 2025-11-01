{
  config.vim = {
    keymaps = [
      {
        key = "e";
        mode = [ "n" ];
        action = ":Neotree toggle<CR>";
        silent = true;
        desc = "Toggle Neo-tree";
      }
    ];
  };
}
