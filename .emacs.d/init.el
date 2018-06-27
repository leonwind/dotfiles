(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)

(add-to-list 'load-path "~/.emacs.d/emacs-powerline")
(require 'powerline)
(setq powerline-arrow-shape 'arrow14)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(minimap-font-face ((t (:height 20 :family "DejaVu Sans Mono"))))
 '(mode-line ((t (:foreground "Black" :background "DarkOrange" :box nil)))))
(display-time-mode 0)

(setq inhibit-splash-screen t)
(setq initial-scratch-message "")

(desktop-save-mode 1)

;; (require 'fireplace)
;; (fireplace 1)

(electric-pair-mode 1)

(load-theme 'gruvbox-dark-hard t)

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

(add-to-list 'load-path "~/.emacs.d/page(setq neo-theme (if (display-graphic-p) 'icons 'arrow))-break-lines")
(require 'page-break-lines)

;; (use-package dashboard
;;     :ensure t
;;     :diminish dashboard-mode
;;     :config
;;     (setq dashboard-banner-logo-title "Happy Coding!")
;;     (setq dashboard-items '((recents  . 10)))
;;     (dashboard-setup-startup-hook))

(require 'helm)
(require 'helm-config)
(require 'recentf)

(setq frame-title-format "emacs")

(setq-default tab-width 4)
(setq-default indent-tabs-mode nil)
(setq-default c-basic-offset 4)
(setq tab-stop-list (number-sequence 4 200 4))

(setq make-backup-files nil)

(set-cursor-color "#00ff00")
(blink-cursor-mode 1)

(require 'ido)
(ido-mode t)

(column-number-mode)

(setq-default fill-column 75)

;; toggle show/hide code block
(add-hook 'prog-mode-hook #'hs-minor-mode)

(setq doc-view-continuous t)

(require 'linum-relative)
(linum-mode)
(linum-relative-global-mode)
(setq linum-relative-current-symbol "")

(show-paren-mode)

(global-hl-line-mode)

(windmove-default-keybindings)

(recentf-mode 1)
(setq recentf-max-menu-items 25)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)
(global-set-key (kbd "M-x") 'smex)

(ac-config-default)

(require 'all-the-icons)
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)
(setq neo-theme 'ascii)

(require 'adaptive-wrap)
(with-eval-after-load 'adaptive-wrap
  (setq-default adaptive-wrap-extra-indent 4))
(add-hook 'visual-line-mode-hook
  (lambda ()
    (adaptive-wrap-prefix-mode +1)
    (diminish 'visual-line-mode)))
(global-visual-line-mode +1)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("125fd2180e880802ae98b85f282b17f0aa8fa6cb9fc4f33d7fb19a38c40acef0" "84d2f9eeb3f82d619ca4bfffe5f157282f4779732f48a5ac1484d94d5ff5b279" default)))
 '(indent-tabs-mode nil)
 '(line-move-visual nil)
 '(minimap-always-recenter nil)
 '(minimap-hide-scroll-bar nil)
 '(minimap-highlight-line nil)
 '(minimap-minimum-width 20)
 '(minimap-mode t)
 '(minimap-width-fraction 0.01)
 '(minimap-window-location (quote right))
 '(package-selected-packages
   (quote
    (py-autopep8 quote
                 (tab-stop-list
                  (quote
                   (4 8 12 16 20 24 28 32 36 40 44 48 52 56 60 64 68 72 76 80 84 88 92 96 100 104 108 112 116 120)))))))


(put 'upcase-region 'disabled nil)
