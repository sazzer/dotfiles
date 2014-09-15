; General Settings
(add-to-list 'load-path "~/.emacs.d/modules")
(setq compilation-scroll-output 1)
(setq stack-trace-on-error t)
(xterm-mouse-mode)

; OS X support
(setq mac-option-key-is-meta nil
      mac-command-key-is-meta t
      mac-command-modifier 'meta
      mac-option-modifier 'none)

; Multi Scratch
(require 'multi-scratch)

; Indentation
(setq-default c-basic-offset 4 c-default-style "linux")
(setq-default tab-width 4 indent-tabs-mode t)
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq indent-line-function 'insert-tab)

; CC-Mode
(require 'cc-mode)
(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))

; ECB
(add-to-list 'load-path "~/.emacs.d/modules/ecb")
(require 'ecb)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ecb-auto-activate f)
 '(ecb-compile-window-height 6)
 '(ecb-layout-name "left15")
 '(ecb-options-version "2.40")
 '(ecb-source-path (quote (".")))
 '(ecb-tree-buffer-style (quote ascii-guides))
 '(inhibit-startup-screen t)
 '(load-home-init-file t t))

; Autopair
(require 'autopair)
(autopair-global-mode)
(setq autopair-autowrap t)

; Yasnippit
(add-to-list 'load-path "~/.emacs.d/modules/yasnippet")
(require 'yasnippet)
(yas-global-mode 1)

; Auto Complete
(add-to-list 'load-path "~/.emacs.d/modules/auto-complete")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
(ac-config-default)
(ac-set-trigger-key "TAB")
(ac-set-trigger-key "<tab>")

(add-to-list 'load-path "~/.emacs.d/modules/auto-complete-clang")
(require 'auto-complete-clang)
(define-key c++-mode-map (kbd "C-S-<return>") 'ac-complete-clang)

(setq ac-auto-start nil)
(setq ac-quick-help-delay 0.5)
;; (ac-set-trigger-key "TAB")
;; (define-key ac-mode-map  [(control tab)] 'auto-complete)
(define-key ac-mode-map  [(control tab)] 'auto-complete)
(defun my-ac-config ()
  (setq-default ac-sources '(ac-source-abbrev ac-source-dictionary ac-source-words-in-same-mode-buffers))
  (add-hook 'emacs-lisp-mode-hook 'ac-emacs-lisp-mode-setup)
  (add-hook 'ruby-mode-hook 'ac-ruby-mode-setup)
  (add-hook 'css-mode-hook 'ac-css-mode-setup)
  (add-hook 'auto-complete-mode-hook 'ac-common-setup)
  (global-auto-complete-mode t))
(defun my-ac-cc-mode-setup ()
  (setq ac-sources (append '(ac-source-clang ac-source-yasnippet) ac-sources)))
(add-hook 'c-mode-common-hook 'my-ac-cc-mode-setup)
;; ac-source-gtags
(my-ac-config)

(define-key c++-mode-map (kbd "C-<backtab>") 'ac-complete-clang)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
