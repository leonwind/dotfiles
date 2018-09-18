;; initialize package archives from melpa and marmalade
(require 'package)
(package-initialize)

(add-to-list 'package-archives
	     '("melpa" . "http://melpa.milkbox.net/packages/")
	     t)

(add-to-list 'package-archives
	     '("marmalade" . "http://marmalade-repo.org/packages/")
	     t)


;; set cusom variables
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "cd4d1a0656fee24dc062b997f54d6f9b7da8f6dc8053ac858f15820f9a04a679" default)))
 '(line-move-visual nil)
 '(package-selected-packages
   (quote
    (multiple-cursors python-pep8 undo-tree autopair linum-relative gruvbox-theme auto-complete smex))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; load gruvbox theme
(load-theme 'gruvbox)

;; set mod line and customize it colors
(add-to-list 'load-path "~/.emacs.d/emacs-powerline")
(require 'powerline)
(setq powerline-arrow-shape 'arrow14)
(custom-set-faces
 '(mode-line ((t (:foreground "#1d1f21" :background "#81a2be" :box nil))))
 '(mode-line-inactive ((t (:foreground "#969896" :background "#282a2e" :box nil)))))

;; start emacs with scratch buffer
(setq inhibit-splash-screen t)
(setq initial-scratch-message "")


;; set basic appearance
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(set-cursor-color "#00ff00")
(blink-cursor-mode 1)

;; activate ido
(require 'ido)
(ido-mode t)

;; activate smex
(global-set-key (kbd "M-x") 'smex)

;; show matching parenthesis
(show-paren-mode 1)

;; highlight current line
(global-hl-line-mode)

;; activate autocompletion
(ac-config-default)

;; relative line numbering
(require 'linum-relative)
(linum-mode)
(linum-relative-global-mode)
(setq linum-relative-current-symbol "")

;; pair braces and qutoes
(autopair-global-mode)

;; activate visual undo-tree
(global-undo-tree-mode)
(global-set-key (kbd "M-/") 'undo-tree-visualize)

;; get multiple cursor
(global-set-key (kbd "C-{") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-}") 'mc/mark-next-like-this)
