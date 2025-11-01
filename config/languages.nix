{ ... }:
{
  config.vim.languages = {
    enableFormat = true;
    enableTreesitter = true;
    enableExtraDiagnostics = true;

    nix = {
      enable = true;
      lsp.server = "nixd";
      format.type = "nixfmt";
    };
  };
}
