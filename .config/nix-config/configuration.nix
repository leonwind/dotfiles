# Edet this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
	./hardware-configuration.nix
	<home-manager/nixos>
    ];

  # Bootloader.
  boot.loader.grub.enable = true;
  boot.loader.grub.device = "/dev/sda";
  boot.loader.grub.useOSProber = true;

  # Setup keyfile
  boot.initrd.secrets = {
    "/crypto_keyfile.bin" = null;
  };

  # Enable grub cryptodisk
  boot.loader.grub.enableCryptodisk=true;

  boot.initrd.luks.devices."luks-ee5cb69f-6ed1-4f9c-8980-b5c7457b7cb5".keyFile = "/crypto_keyfile.bin";
  networking.hostName = "LEONRACER"; 
  #networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.
  #networking.wireless.userControlled.enable = true;
  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Enable networking
  networking.networkmanager.enable = true;

  # Set your time zone.
  time.timeZone = "Europe/Berlin";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "de_DE.UTF-8";
    LC_IDENTIFICATION = "de_DE.UTF-8";
    LC_MEASUREMENT = "de_DE.UTF-8";
    LC_MONETARY = "de_DE.UTF-8";
    LC_NAME = "de_DE.UTF-8";
    LC_NUMERIC = "de_DE.UTF-8";
    LC_PAPER = "de_DE.UTF-8";
    LC_TELEPHONE = "de_DE.UTF-8";
    LC_TIME = "de_DE.UTF-8";
  };

  # Configure keymap in X11
  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };

	
  #virtualisation.docker.enable = enable;

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.leon = {
    isNormalUser = true;
    description = "Leon Windheuser";
    extraGroups = [ "networkmanager" "wheel" "audio" "video" "docker"];
  };

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
	vim 
	wget
	git
	gnupg
	pinentry
	pinentry-gtk2

	xorg.xf86inputlibinput
	xorg.xorgserver

        pulseaudio
        pipewire
	light
  ];

  services = {
      libinput = {
        enable = true;
        touchpad.naturalScrolling = true;
      };

      displayManager = {
        defaultSession = "none+i3";
      };
  };

  services.xserver = {
        enable = true;

	desktopManager = {
		xterm.enable = false;
	};
	
	
	windowManager.i3 = {
		enable = true;
		extraPackages = with pkgs; [
			dmenu
			i3status
			i3lock
		];
        };
        #videoDrivers = [ "intel" ];
  };

  hardware.trackpoint = {
  	enable = true;
	speed = 100;
	sensitivity = 200;
  };


  services.pipewire = {
    enable = true;
    audio.enable = true;
    pulse.enable = true;
  };
  
  hardware.pulseaudio.enable = false;
  nixpkgs.config.pulseaudio = false;
	
  programs.light.enable = true;

  programs.zsh.enable = true;
  users.defaultUserShell = pkgs.zsh;
  environment.pathsToLink = [ "/libexec" ];

  environment.variables.LIBVA_DRIVER_NAME = "i915";

  services.pcscd.enable = true;
  programs.gnupg.agent = {
	enable = true;
	enableSSHSupport = true;
  };

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };

  # List services that you want to enable:

  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;

  networking.firewall = {
  	enable = true;
	allowedTCPPorts = [22 8083 8009 8010];  # For gnomecast server
  	allowedUDPPorts = [ 5353 ]; # For device discovery
	allowedUDPPortRanges = [
		{ from = 32768; to = 61000; } # For Streaming
	];
  };

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leavecatenate(variables, "bootdev", bootdev)
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "22.05"; # Did you read the comment?

  #programs.steam = {
  #  enable = true;
  #  remotePlay.openFirewall = true;
  #  dedicatedServer.openFirewall = true;
  #};

  services.blueman.enable = true;
}
