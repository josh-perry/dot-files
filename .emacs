(require 'package)

; Packages
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

; Style
(load-theme 'base16-materia t)
(global-linum-mode 1)
(global-hl-line-mode 1)
(menu-bar-mode -1)
(tool-bar-mode -1)

; Font
(set-default-font "Hack")
(set-face-attribute 'default nil :height 160)

; Cursor
(setq-default cursor-type 'bar) 
(set-cursor-color "#ffffff") 

; Start maximised
(add-to-list 'default-frame-alist '(fullscreen . maximized))

; Turn off the bell because christ
(setq ring-bell-function 'ignore)

; Scroll to top/bottom
(setq scroll-error-top-bottom t)

; Keys
(global-unset-key "\C-z")
