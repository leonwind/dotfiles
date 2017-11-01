(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)

(add-to-list 'load-path "~/.emacs.d/page(setq neo-theme (if (display-graphic-p) 'icons 'arrow))-break-lines")
(require 'page-break-lines)
(use-package dashboard
    :ensure t
    :diminish dashboard-mode
    :config
    (setq dashboard-banner-logo-title "Happy Coding!")
    (setq dashboard-items '((recents  . 10)))
    (dashboard-setup-startup-hook))


(add-to-list 'load-path "~/.emacs.d/emacs-powerline")
(require 'powerline)
(setq powerline-arrow-shape 'arrow14)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(mode-line ((t (:foreground "Black" :background "DarkOrange" :box nil)))))
(display-time-mode 0)


(load-theme 'gruvbox-dark-hard t)

(setq frame-title-format "emacs")

(menu-bar-mode -1)

(tool-bar-mode -1)

(scroll-bar-mode -1)

(set-cursor-color "#00ff00")
(blink-cursor-mode 1)

(require 'ido)
(ido-mode t)

(column-number-mode)

(setq-default fill-column 75)

(setq-default indent-tabs-mode nil)

(add-hook 'prog-mode-hook 'highlight-indent-guides-mode)
(setq highlight-indent-guides-method 'character)

(setq doc-view-continuous t)

(require 'linum-relative)
(linum-mode)
(linum-relative-global-mode)
(setq linum-relative-current-symbol "")

(show-paren-mode)

(global-hl-line-mode)

(windmove-default-keybindings)

(global-set-key (kbd "M-x") 'smex)

(ac-config-default)

(require 'all-the-icons)
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)
(setq neo-theme 'ascii)

(require 'helm-config)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("125fd2180e880802ae98b85f282b17f0aa8fa6cb9fc4f33d7fb19a38c40acef0" "84d2f9eeb3f82d619ca4bfffe5f157282f4779732f48a5ac1484d94d5ff5b279" default)))
 '(package-selected-packages
   (quote
    (fireplace transpose-frame highlight-indent-guides dashboardn pdf-tools latex-preview-pane auctex all-the-icons use-package dashboard neotree helm smex linum-relative gruvbox-theme ac-clang))))


(put 'upcase-region 'disabled nil)
