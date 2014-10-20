;; Duijf's emacs config based on Pallet and Cask

(require 'cask "/usr/local/Cellar/cask/0.7.2/cask.el")
(cask-initialize)
(require 'pallet)

;;
;; Remove a lot of crap, most of the configuration from:
;; Emacs, naked (http://bzg.fr/emacs-strip-tease.html)
;;

;; Prevent the cursor from blinking
(blink-cursor-mode 0)

;; Remove initial scratch message
(setq initial-scratch-message "")

;; Don't show the statup screen
(setq inhibit-startup-message t)

;; Don't make sounds
(setq ring-bell-function 'ignore)

;; Start in full-screen
(toggle-frame-fullscreen)

;; Don't show the scroll bars
(scroll-bar-mode 0)

;; Don't show the tool bar
(tool-bar-mode 0)
