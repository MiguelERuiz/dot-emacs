(require 'package)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(custom-enabled-themes '(misterioso))
 '(package-archives '(("melpa-stable" . "https://stable.melpa.org/packages/")))
 '(package-selected-packages
   '(scss-mode tide web-mode alchemist bongo persistent-scratch markdown-preview-mode markdown-mode magit erlang undo-tree company)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(ido-mode)
(show-paren-mode 1) ; Highlight the beginning and the end of () [] ...
(global-linum-mode t)			; Number of lines
(setq scroll-step 1
      scroll-conservatively 10000) ; Lineal scroll
(desktop-save-mode 1)              ; Save the status of Emacs
(electric-pair-mode 1)             ; Open `(' and `)' at the same time
(setq column-number-mode t)        ; Number of column
(global-undo-tree-mode)            ; Undo tree
(global-set-key (kbd "C-x g") 'magit-status) ; magit-status shortcut
(setq make-backup-files nil)          ; Stop creating backup~ files
(setq auto-save-default nil)          ; Stop creating #autosave# files
;; Do the world a favour! Put this in your ~/.emacs:
(setq-default indent-tabs-mode nil)
;; Company mode for all files
(add-hook 'after-init-hook 'global-company-mode)
;; Erlang Indentation
(setq erlang-indent-level 2)
;; Wording size
(set-face-attribute 'default nil :height 150) ; For laptop screen
;; (set-face-attribute 'default nil :height 95) ; For big screens
(persistent-scratch-setup-default)      ; *scratch* buffer would not be deleted
;; Tell emacs where is your personal elisp lib dir
(add-to-list 'load-path "~/.emacs.d/lisp/")
(load "csv-mode") ;; best not to include the ending “.el” or “.elc”
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
