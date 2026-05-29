{
  config,
  pkgs,
  ...
}: {
  programs.nvf = {
    enable = true;
    settings = {
      vim = {
        viAlias = true;
        vimAlias = true;

        theme = {
          enable = true;
          name = "catppuccin";
          style = "macchiato";
        };

        globals = {
          mapleader = "\\";
        };

        statusline.lualine.enable = true;
        telescope = {
          enable = true;
          extensions = [
            {
              name = "fzf";
              packages = [pkgs.vimPlugins.telescope-fzf-native-nvim];
              setup = {fzf = {fuzzy = true;};};
            }
          ];
        };
        autocomplete.nvim-cmp.enable = true;

        lsp.enable = true;
        lsp.servers.nixd.settings.nil.nix.autoArchive = true;

        languages = {
          enableTreesitter = true;

          nix.enable = true;
          typescript.enable = true;
          clang.enable = true;
          python.enable = true;
          bash.enable = true;
          markdown.enable = true;
        };
      };
    };
  };
}
