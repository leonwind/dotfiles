{ config, pkgs, ... }:

{
	imports = [
		./vim.nix
		./zsh.nix
	];

	home.username = "leon";
	home.homeDirectory = "/home/leon";
	nixpkgs.config.allowUnfree = true;

	home.stateVersion = "22.05";
	programs.home-manager.enable = true;

	home.packages = with pkgs; [
		htop
        google-chrome
        rxvt_unicode
        tmux
		source-code-pro
		oh-my-zsh	
		rofi
		pass
		rofi-pass
		neofetch
		arandr
        redshift
        fzf
        tlp
        cloc
        tree
        pamixer
        evince
        zip
        unzip
        go-chromecast

        nodejs
        delta

        jetbrains.idea-ultimate
        jetbrains.pycharm-professional
        jetbrains.goland
        jetbrains.webstorm
        jetbrains.clion
        
        python3
        python39Packages.pip
        go
    ];
    
    services.redshift = {
        enable = true;
        # Lat. and long. of Berlin 
        latitude = "52.52";
        longitude = "13.40";
        temperature = {
            day = 7000;
            night = 2200;
        };
    };
    
    programs.go = {
        enable = true;
        goPath = "go";
    };
}
