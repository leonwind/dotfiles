{ config, pkgs, ... }:

{
	imports = [
		./vim.nix
		./zsh.nix
	];

	home.username = "leon";
	home.homeDirectory = "/home/leon";
	nixpkgs.config.allowUnfree = true;

    home.stateVersion = "23.05";
	programs.home-manager.enable = true;

    home.packages = with pkgs; [
        gnome.gnome-keyring
        libsecret 
        libgnome-keyring
        xclip
        ncdu
        nethogs
        blueman
        tmux
        htop
        docker
        google-chrome
        chromium
        rxvt_unicode
        tmux
        source-code-pro
        spectacle
		oh-my-zsh	
		rofi
        pass
        rofi-pass
        firefox
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
        steam
        scrot
        networkmanagerapplet
        vscode
        poppler_utils
        pavucontrol

        nodejs
        delta

        jetbrains.idea-ultimate
        jetbrains.goland
        jetbrains.clion
        
        python3
        python39Packages.pip
        python39Packages.conda
        conda
        go

        spotify
        zoom
        anki-bin
        xfce.thunar
    ];
    
    services.redshift = {
        enable = true;
        # Lat. and long. of Berlin 
        latitude = "52.52";
        longitude = "13.40";
        temperature = {
            day = 7000;
            night = 2800;
        };
    };
    
    programs.go = {
        enable = true;
        goPath = "go";
    };
}
