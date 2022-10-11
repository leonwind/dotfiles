{ pkgs, ... }:
{
	programs.neovim = {
		enable = true;
		vimAlias = true;	
		extraConfig = builtins.readFile ./vim.config;
        
		plugins = with pkgs.vimPlugins; [
			gruvbox
            vim-nix
            
            vimtex
		];
	};
}
