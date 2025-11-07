{ config, pkgs, ... }:

{
	imports = [
		./vim.nix
		./zsh.nix
	];

	home.username = "leon";
	home.homeDirectory = "/home/leon";
	nixpkgs.config.allowUnfree = true;

    home.stateVersion = "24.05";
	programs.home-manager.enable = true;

    home.packages = with pkgs; [
        openvpn
        gnome-keyring
        libsecret 
        libgnome-keyring
        xclip
        ncdu
        shutter
        nethogs
        blueman
        tmux
        htop
        docker
        firefox
        google-chrome
        rxvt-unicode-unwrapped
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
        scrot
        networkmanagerapplet
        vscode
        poppler_utils
        pavucontrol
        killall

        jetbrains.clion
        
        python3
        go

        xfce.thunar
        
        linuxKernel.packages.linux_zen.perf

        prismlauncher
        steam
    ];
    
    services.redshift = {
        enable = true;
        # Lat. and long. of Munich 
        latitude = "48.14";
        longitude = "11.57";
        temperature = {
            day = 6500;
            night = 3000;
        };
    };

    #services.openvpn.servers = {
    #    eduVPN = { 
    #        config = "~/openvpn//tum.eduvpn.lrz.de_tum-full-ov_20241111_eduvpn-cert.ovpn"; 
    #    };
    #};
    
    programs.go = {
        enable = true;
        goPath = "go";
    };
}
