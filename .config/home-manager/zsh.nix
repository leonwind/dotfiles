{
	programs.zsh = {
		enable = true;
		oh-my-zsh = {
			enable = true;
			theme = "agnoster";
        };
        
        autosuggestion.enable = true;
        
        sessionVariables = rec {
            EDITOR = "vim";
            GIT_EDITOR = EDITOR;
            CLICOLOR = "YES";
        };

        initExtra = ''
            export PATH="$PATH:$HOME/go/bin"
            prompt_context(){}
            source "$(fzf-share)/key-bindings.zsh"
            source "$(fzf-share)/completion.zsh"
            source "$HOME/.zplug/repos/agkozak/zsh-z/zsh-z.plugin.zsh"
            unsetopt BEEP
        '';
        
        zplug = {
            enable = true;
            plugins = [
                {name = "agkozak/zsh-z";}
                {name = "junegunn/fzf";}
                {name = "zsh-users/zsh-syntax-highlighting";}
            ];
        };

        shellAliases = {
            hm = "home-manager";
        
            gits = "git status";
            gita = "git add -A";
            gitc = "git commit -m";
            gitd = "git diff";
            gitds = "git diff --stat";
            gitl = "git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all";
            nsg = "nix-shell-generator";
            
            chrome = "google-chrome-stable";
            lxprint =  "ssh ge57dov@lxhalle.in.tum.de lpr <";

            idea = "idea-ultimate";

            perf-stats = "perf stat -B -e cache-references,cache-misses,cycles,instructions,branches,faults,migrations";

            copy = "xclip -selection clipboard";
            fvim = "vim $(fzf)";
            btw = "neofetch";
        };
	};
}
